import 'dart:async';

import 'package:ethiscan/app/scans_bloc/scans_bloc.dart';
import 'package:ethiscan/domain/entities/app/list_product.dart';
import 'package:ethiscan/domain/entities/app/scan_history.dart';
import 'package:ethiscan/injection.dart';
import 'package:ethiscan/presentation/core/custom_loading.dart';
import 'package:ethiscan/presentation/core/custom_texts.dart';
import 'package:ethiscan/presentation/core/list_view_layout_body.dart';
import 'package:ethiscan/presentation/product/product_page.dart';
import 'package:ethiscan/presentation/widget_core/popup_validation.dart';
import 'package:ethiscan/presentation/widget_core/product_card.dart';
import 'package:ethiscan/utils/i18n_utils.dart';
import 'package:ethiscan/utils/navigation_util.dart';
import 'package:ethiscan/utils/toast.dart';
import 'package:ethiscan/utils/ui_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:camera/camera.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_mlkit_barcode_scanning/google_mlkit_barcode_scanning.dart';

class ScansPage extends StatefulWidget {
  const ScansPage({super.key});

  @override
  State<ScansPage> createState() => _ScansPage();
}

class _ScansPage extends State<ScansPage> {
  late ScansBloc _scansBloc;
  late CameraController _controller;
  late Future<void> _initializeControllerFuture;
  late BarcodeScanner _barcodeScanner;
  Timer? _timer;
  bool _isDisposed = false;
  late FToast fToast;

  @override
  void initState() {
    _scansBloc = getIt<ScansBloc>();
    _scansBloc.add(const ScansEvent.load());
    _initializeControllerFuture = _initializeCamera();
    _barcodeScanner = BarcodeScanner();

    fToast = FToast();
    fToast.init(context);
    super.initState();
  }

  void startTimer() {
    const period = Duration(seconds: 1); // Change the duration as needed
    _timer = Timer.periodic(period, (timer) async {
      await _captureFrame();
    });
  }

  void stopTimer() {
    _timer?.cancel();
    _timer = null;
  }

  Future<void> _initializeCamera() async {
    final cameras = await availableCameras();
    final firstCamera = cameras.first;

    _controller = CameraController(
      firstCamera,
      ResolutionPreset.medium,
    );

    await _controller.initialize();

    startTimer();
  }

  Future<void> _captureFrame() async {
    if (_controller.value.isInitialized && !_isDisposed) {
      try {
        final image = await _controller.takePicture();
        final inputImage = InputImage.fromFilePath(image.path);
        final List<Barcode> barcodes =
            await _barcodeScanner.processImage(inputImage);

        if (barcodes.isNotEmpty) {
          final Barcode barcode = barcodes.first;
          _scansBloc
              .add(ScansEvent.barcodeFound(barcode.displayValue ?? 'Unknown'));
        }
      } catch (e) {
        // ignore: avoid_print
        print('Error taking picture: $e');
      }
    }
  }

  @override
  void dispose() {
    _isDisposed = true;
    stopTimer();
    _controller.dispose();
    _barcodeScanner.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ScansBloc>(
      create: (context) => _scansBloc,
      child: BlocListener<ScansBloc, ScansState>(
        listener: (context, state) {
          state.maybeWhen(
            barcodeFound: (barcode) {
              MyToaster.showToast(fToast,
                  message: I18nUtils.translate(context, "scan.barcode_found")
              );
              _scansBloc.add(const ScansEvent.stop());
              NavigationUtils.push(
                  context,
                  ProductPage(scansBloc: _scansBloc, productId: barcode)
              );
            },
            waiting: () {
              _isDisposed = true;
              stopTimer();
            },
            loading: () {
              if (_isDisposed) {
                _isDisposed = false;
                startTimer();
              }
            },
            orElse: () {},
          );
        },
        child: BlocBuilder<ScansBloc, ScansState>(
          builder: (context, state) {
            return state.when(
              loading: () => _page(context, loading: true),
              error: () => _page(context, error: true),
              initial: () => _page(context),
              loaded: (scans) => _page(context, scans: scans),
              barcodeFound: (barcode) => _page(context, barcode: barcode),
              waiting: () => _page(context),
            );
          },
        ),
      ),
    );
  }

  Widget _page(
    BuildContext context, {
    bool loading = false,
    bool error = false,
    String? barcode,
    List<ScanHistory> scans = const [],
  }) {
    return Scaffold(
      body: ListViewLayoutBody(
        children: <Widget>[
          FutureBuilder<void>(
            future: _initializeControllerFuture,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                return ClipRRect(
                  child: SizedOverflowBox(
                    size: const Size(double.infinity, 300),
                    alignment: Alignment.center,
                    child: FittedBox(
                      fit: BoxFit.cover,
                      child: SizedBox(
                        width: _controller.value.previewSize!.height,
                        height: _controller.value.previewSize!.width,
                        child: CameraPreview(_controller),
                      ),
                    ),
                  ),
                );
              } else {
                return const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  child: CustomCircularLoading(),
                );
              }
            },
          ),
          Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const SizedBox(height: 20),
                    if (loading)
                      const Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                        child: CustomCircularLoading(),
                      ),
                    if (barcode != null) Text('Barcode found: $barcode'),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 0),
                      child: Column(
                        children: _getScanCards(scans, error),
                      ),
                    ),
                  ]
              )
          ),
        ],
      ),
    );
  }

  List<Widget> _getScanCards(List<ScanHistory> scans, bool error) {
    if (error) {
      return [
        CustomH3(I18nUtils.translate(context, "scan.error.title")),
        CustomText(I18nUtils.translate(context, "scan.error.message")),
      ];
    } else {
      scans = scans.reversed.toList();
      List<Widget> widgets = [];
      List<Widget> scanCards = scans
          .map((scan) => ProductCard(
            error: scan.name == null,
            isFavorite: false,
            favorite: ListProduct(
              id: scan.barcodeId,
              name: scan.name!,
              scanDate: scan.date!
            )
          ))
          .toList();

      widgets.addAll([
        PopupValidation(
          name: "clear_history",
          onPressed: () => _scansBloc.add(const ScansEvent.clear()),
          button: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomH2R(
                I18nUtils.translate(context, "popup.clear_history.title")
              ),
              const SizedBox(width: 10),
              const Icon(Icons.delete, color: UIColors.red)
            ]
          ),
        ),
      ]);
      for (int i = 0; i < scanCards.length; i++) {
        widgets.addAll([
          const SizedBox(height: 15),
          scanCards[i]
        ]);
      }
      return widgets;
    }
  }
}

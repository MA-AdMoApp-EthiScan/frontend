import 'dart:async';

import 'package:ethiscan/app/scans_bloc/scans_bloc.dart';
import 'package:ethiscan/domain/entities/app/scan_history.dart';
import 'package:ethiscan/injection.dart';
import 'package:ethiscan/presentation/core/custom_loading.dart';
import 'package:ethiscan/presentation/core/custom_texts.dart';
import 'package:ethiscan/presentation/core/list_view_layout_body.dart';
import 'package:ethiscan/presentation/product/product_page.dart';
import 'package:ethiscan/presentation/scan/widgets/scans_card.dart';
import 'package:ethiscan/utils/i18n_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:camera/camera.dart';
import 'package:google_mlkit_barcode_scanning/google_mlkit_barcode_scanning.dart';
import 'package:intl/intl.dart';

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

  @override
  void initState() {
    super.initState();
    _scansBloc = getIt<ScansBloc>();
    _scansBloc.add(const ScansEvent.load());
    _initializeControllerFuture = _initializeCamera();
    _barcodeScanner = BarcodeScanner();
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
              Navigator.of(context)
                  .push(
                MaterialPageRoute(
                  builder: (context) => ProductPage(productId: barcode),
                ),
              )
                  .then((_) {
                _scansBloc.add(const ScansEvent.load());
              });
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
                  ])),
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
          .map((scan) => ScansCard(
              name: scan.name,
              barcodeId: scan.barcodeId,
              date: DateFormat('dd/MM/yy HH:mm').format(scan.date!)))
          .toList();
      for (int i = 0; i < scanCards.length; i++) {
        widgets.add(const SizedBox(height: 15));
        widgets.add(scanCards[i]);
      }
      return widgets;
    }
  }
}

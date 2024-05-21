import 'package:bloc/bloc.dart';
import 'package:ethiscan/data/repositories/product_repository.dart';
import 'package:ethiscan/data/repositories/scan_history_repository.dart';
import 'package:ethiscan/domain/entities/app/scan_history.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'scans_bloc.freezed.dart';
part 'scans_event.dart';
part 'scans_state.dart';

@injectable
class ScansBloc extends Bloc<ScansEvent, ScansState> {
  final ScanHistoryRepository _scanHistoryRepository;
  final ProductRepository _productRepository;

  ScansBloc(this._scanHistoryRepository, this._productRepository)
      : super(const ScansState.initial()) {
    on<ScansEvent>((event, emit) async {
      await event.when(
        load: () async {
          emit(const ScansState.loading());
          //await Future.delayed(const Duration(seconds: 3));
          final history = await _scanHistoryRepository.getScanHistory();
          emit(ScansState.loaded(scans: history));
        },
        barcodeFound: (barcode) async {
          var either = await _productRepository.getProductById(barcode);
          String productName = "";
          either.fold(
            (failure) {
              productName = 'Unknown name $barcode';
              //_productRepository.addProduct(
              //  Product(
              //    id: barcode,
              //    name: 'Unknown name $barcode',
              //    imageUrl: 'Unknown', // Provide an image URL here
              //    description: 'Unknown', // Provide a description here
              //  ),);
            },
            (product) {
              productName = product.name;
            },
          );
          await _scanHistoryRepository.addScanHistory(
            ScanHistory(
              barcodeId: barcode,
              name: productName,
              date: DateTime.now(),
            ),
          );
          emit(ScansState.barcodeFound(barcode: barcode));
        },
        invalidBarcode: (barcode) async {
          emit(const ScansState.error());
        },
      );
    });
  }
}

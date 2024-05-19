import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'scans_bloc.freezed.dart';
part 'scans_event.dart';
part 'scans_state.dart';

@injectable
class ScansBloc extends Bloc<ScansEvent, ScansState> {
  ScansBloc() : super(const ScansState.initial()) {
    on<ScansEvent>((event, emit) async {
      await event.when(
        load: () async {
          emit(const ScansState.loading());
          await Future.delayed(const Duration(seconds: 3));
          emit(const ScansState.loaded(scans: ['Scan 1', 'Scan 2']));
        },
        startScanning: () async {
          emit(const ScansState.scanning());
        },
        stopScanning: () async {
          emit(const ScansState.loaded(scans: ['Scan 1', 'Scan 2']));
        },
        barcodeFound: (barcode) async {
          emit(ScansState.barcodeFound(barcode: barcode));
          // switch to page FavoritePage(barcode: barcode);
        },
      );
    });
  }
}


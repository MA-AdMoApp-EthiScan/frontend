import 'package:bloc/bloc.dart';
import 'package:ethiscan/data/repositories/scan_history_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'scans_bloc.freezed.dart';
part 'scans_event.dart';
part 'scans_state.dart';

@injectable
class ScansBloc extends Bloc<ScansEvent, ScansState> {
  final ScanHistoryRepository _scanHistoryRepository;
  ScansState? _previousState;

  ScansBloc(this._scanHistoryRepository) : super(const ScansState.initial()) {
    on<ScansEvent>((event, emit) async {
      await event.when(
        load: () async {
          emit(const ScansState.loading());
          await Future.delayed(const Duration(seconds: 3));
          final history = await _scanHistoryRepository.getScanHistory();
          _previousState = ScansState.loaded(scans: history);
          emit(_previousState!);
        },
        barcodeFound: (barcode) async {
          _previousState = state; // Store the current state before navigating
          await _scanHistoryRepository.addScanHistory(barcode);
          emit(ScansState.barcodeFound(barcode: barcode));
        },
        invalidBarcode: (barcode) async {
          _previousState = state; // Store the current state before navigating
          emit(const ScansState.error());
        },
        returnToPrevious: () async {
          if (_previousState != null) {
            emit(_previousState!);
          }
        },
      );
    });
  }
}


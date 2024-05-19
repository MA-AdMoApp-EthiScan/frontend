part of 'scans_bloc.dart';

@freezed
abstract class ScansState with _$ScansState {
  const factory ScansState.initial() = _ScansInitial;
  const factory ScansState.loading() = _ScansLoading;
  const factory ScansState.loaded({required List<String> scans}) = _ScansLoaded;
  const factory ScansState.error() = _ScansError;
  const factory ScansState.barcodeFound({required String barcode}) = _ScansBarcodeFoundState;
} 
part of 'scans_bloc.dart';

@freezed
abstract class ScansEvent with _$ScansEvent {
  const factory ScansEvent.load() = _ScansLoad;
  const factory ScansEvent.barcodeFound(String barcode) = _ScansBarcodeFound;
  const factory ScansEvent.invalidBarcode(String barcode) = _ScansInvalidBarcode;
}


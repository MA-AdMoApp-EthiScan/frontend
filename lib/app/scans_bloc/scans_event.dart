part of 'scans_bloc.dart';

@freezed
abstract class ScansEvent with _$ScansEvent {
  const factory ScansEvent.load() = _ScansLoad;
  const factory ScansEvent.barcodeFound(String barcode) = _ScansBarcodeFound;
  const factory ScansEvent.invalideBarcode(String barcode) = _ScansInvalideBarcode;
  const factory ScansEvent.returnToPrevious() = _ScansReturnToPrevious;
}


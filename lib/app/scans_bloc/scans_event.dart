part of 'scans_bloc.dart';

@freezed
abstract class ScansEvent with _$ScansEvent {
  const factory ScansEvent.load() = _ScansLoad;
  const factory ScansEvent.startScanning() = _ScansStartScanning;
  const factory ScansEvent.stopScanning() = _ScansStopScanning;
  const factory ScansEvent.barcodeFound(String barcode) = _ScansBarcodeFound;
  //const factory ScansEvent.barcodeNoteFound(String barcode) = _ScansBarcodeFound;

}


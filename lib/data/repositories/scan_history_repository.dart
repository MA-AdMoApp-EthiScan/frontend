import 'package:ethiscan/domain/entities/app/scan_history.dart';

abstract class ScanHistoryRepository {
  Future<List<ScanHistory>> getScanHistory();
  Future<void> addScanHistory(ScanHistory scanHistory);
  Future<void> deleteScanHistory(String barcodeId);
}
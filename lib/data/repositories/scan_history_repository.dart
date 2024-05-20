abstract class ScanHistoryRepository {
  Future<List<String>> getScanHistory();
  Future<void> addScanHistory(String barcodeId);
  Future<void> deleteScanHistory(String barcodeId);
}
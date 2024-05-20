import 'package:flutter_test/flutter_test.dart';
import 'package:ethiscan/data/datasources/scan_history_provider.dart';
import 'package:ethiscan/domain/entities/app/scan_history.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  late ScanHistoryProvider scanHistoryProvider;

  setUp(() {
    scanHistoryProvider = ScanHistoryProvider();
    SharedPreferences.setMockInitialValues({});
  });

  group('ScanHistoryProvider', () {
    test('addScanHistory adds a scan history item', () async {
      final scanHistory = ScanHistory(barcodeId: '123', name: 'Test Product');

      await scanHistoryProvider.addScanHistory(scanHistory);
      final history = await scanHistoryProvider.getScanHistory();

      expect(history.length, 1);
      expect(history.first.barcodeId, '123');
    });

    test('deleteScanHistory removes a scan history item', () async {
      final scanHistory = ScanHistory(barcodeId: '123', name: 'Test Product');

      await scanHistoryProvider.addScanHistory(scanHistory);
      await scanHistoryProvider.deleteScanHistory('123');
      final history = await scanHistoryProvider.getScanHistory();

      expect(history.isEmpty, true);
    });
  });
}

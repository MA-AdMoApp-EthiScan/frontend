import 'package:ethiscan/data/repositories/scan_history_repository.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@Singleton(as: ScanHistoryRepository)
class ScanHistoryProvider implements ScanHistoryRepository {
  static const _scanHistoryKey = 'scan_history';

  @override
  Future<List<String>> getScanHistory() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getStringList(_scanHistoryKey) ?? [];
  }

  @override
  Future<void> addScanHistory(String barcodeId) async {
    final prefs = await SharedPreferences.getInstance();
    final history = prefs.getStringList(_scanHistoryKey) ?? [];
    history.add(barcodeId);
    await prefs.setStringList(_scanHistoryKey, history);
  }

  @override
  Future<void> deleteScanHistory(String barcodeId) async {
    final prefs = await SharedPreferences.getInstance();
    final history = prefs.getStringList(_scanHistoryKey) ?? [];
    history.remove(barcodeId);
    await prefs.setStringList(_scanHistoryKey, history);
  }
}
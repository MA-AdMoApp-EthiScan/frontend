import 'dart:convert';

import 'package:ethiscan/data/repositories/scan_history_repository.dart';
import 'package:ethiscan/domain/entities/app/scan_history.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@Singleton(as: ScanHistoryRepository)
class ScanHistoryProvider implements ScanHistoryRepository {
  static const _scanHistoryKey = 'scan_history_2';

  @override
  Future<List<ScanHistory>> getScanHistory() async {
    final prefs = await SharedPreferences.getInstance();
    final history = prefs.getStringList(_scanHistoryKey) ?? [];
    return history.map((item) => ScanHistory.fromMap(jsonDecode(item))).toList();
  }

  @override
  Future<void> addScanHistory(ScanHistory scanHistory) async {
    final prefs = await SharedPreferences.getInstance();
    final history = prefs.getStringList(_scanHistoryKey) ?? [];
    history.add(jsonEncode(scanHistory.toMap()));
    await prefs.setStringList(_scanHistoryKey, history);
  }

  @override
  Future<void> deleteScanHistory(String barcodeId) async {
    final prefs = await SharedPreferences.getInstance();
    final history = prefs.getStringList(_scanHistoryKey) ?? [];
    history.removeWhere((item) => ScanHistory.fromMap(jsonDecode(item)).barcodeId == barcodeId);
    await prefs.setStringList(_scanHistoryKey, history);
  }
}

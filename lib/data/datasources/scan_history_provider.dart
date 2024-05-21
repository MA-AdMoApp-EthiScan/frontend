import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:ethiscan/data/repositories/scan_history_repository.dart';
import 'package:ethiscan/domain/entities/app/scan_history.dart';
import 'package:ethiscan/domain/entities/app/api_error.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@Singleton(as: ScanHistoryRepository)
class ScanHistoryProvider implements ScanHistoryRepository {
  static const _scanHistoryKey = 'scan_history_3';

  @override
  Future<Either<APIError, List<ScanHistory>>> getScanHistory() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final history = prefs.getStringList(_scanHistoryKey) ?? [];
      final scanHistoryList =
          history.map((item) => ScanHistory.fromMap(jsonDecode(item))).toList();
      return Right(scanHistoryList);
    } catch (e) {
      return Left(APIError(e.toString(), 501));
    }
  }

  @override
  Future<Either<APIError, Unit>> addScanHistory(ScanHistory scanHistory) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final history = prefs.getStringList(_scanHistoryKey) ?? [];
      history.add(jsonEncode(scanHistory.toMap()));
      await prefs.setStringList(_scanHistoryKey, history);
      return const Right(unit);
    } catch (e) {
      return Left(APIError(e.toString(), 501));
    }
  }

  @override
  Future<Either<APIError, Unit>> deleteScanHistory(String barcodeId) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final history = prefs.getStringList(_scanHistoryKey) ?? [];
      history.removeWhere((item) =>
          ScanHistory.fromMap(jsonDecode(item)).barcodeId == barcodeId);
      await prefs.setStringList(_scanHistoryKey, history);
      return const Right(unit);
    } catch (e) {
      return Left(APIError(e.toString(), 501));
    }
  }
}

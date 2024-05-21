import 'package:dartz/dartz.dart';
import 'package:ethiscan/domain/entities/app/scan_history.dart';
import 'package:ethiscan/domain/entities/app/api_error.dart';

abstract class ScanHistoryRepository {
  Future<Either<APIError, List<ScanHistory>>> getScanHistory();
  Future<Either<APIError, Unit>> addScanHistory(ScanHistory scanHistory);
  Future<Either<APIError, Unit>> deleteScanHistory(String barcodeId);
}

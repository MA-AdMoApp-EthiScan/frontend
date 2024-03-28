
import 'package:ethiscan/domain/core/either.dart';

abstract class ILanguageRepository {
  Future<Either<NoCachedLanguageFailure, String>> getCachedLanguage();
  void storeCachedLanguage(String language);
  Future<bool> deleteCachedLanguage();
}

class NoCachedLanguageFailure extends Failure {}
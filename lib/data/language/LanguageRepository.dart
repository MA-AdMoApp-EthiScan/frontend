import 'package:injectable/injectable.dart';
import 'package:ethiscan/domain/core/either.dart';
import 'package:ethiscan/domain/language/i_language_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';

@LazySingleton(as: ILanguageRepository)
class LanguageRepository implements ILanguageRepository {
  @override
  Future<bool> deleteCachedLanguage() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.remove('language');
  }

  @override
  Future<Either<NoCachedLanguageFailure, String>> getCachedLanguage() async {
    final prefs = await SharedPreferences.getInstance();
    final language = prefs.getString('language');
    if (language != null) {
      return Right(language);
    } else {
      return Left(NoCachedLanguageFailure());
    }
  }

  @override
  void storeCachedLanguage(String language) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString('language', language);
  }

}
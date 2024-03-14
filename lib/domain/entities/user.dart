import 'package:ethiscan/domain/entities/user_preferences.dart';

class User {
  final String id;
  final String name;
  final String email;
  UserPreferences preferences;

  User(
      {required this.id,
      required this.name,
      required this.email,
      required this.preferences});
}

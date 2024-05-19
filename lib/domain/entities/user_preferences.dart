import 'package:json_annotation/json_annotation.dart';
import 'metadata.dart';

part 'user_preferences.g.dart';

@JsonSerializable()
class UserPreferences {
  final List<Metadata> metadataSubscriptions;

  UserPreferences({required this.metadataSubscriptions});

  factory UserPreferences.fromJson(Map<String, dynamic> json) =>
      _$UserPreferencesFromJson(json);
  Map<String, dynamic> toJson() => _$UserPreferencesToJson(this);
}

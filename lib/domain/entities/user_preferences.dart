import 'package:json_annotation/json_annotation.dart';
import 'metadata_type.dart';

part 'user_preferences.g.dart';

@JsonSerializable()
class UserPreferences {
  final List<MetadataType> metadataSubscriptions;

  UserPreferences({required this.metadataSubscriptions});

  factory UserPreferences.fromJson(Map<String, dynamic> json) =>
      _$UserPreferencesFromJson(json);
  Map<String, dynamic> toJson() => _$UserPreferencesToJson(this);
}

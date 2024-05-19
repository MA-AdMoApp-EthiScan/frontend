import 'package:json_annotation/json_annotation.dart';

part 'metadata_type.g.dart';

@JsonSerializable()
class MetadataType {
  final String name;
  final Map<String, dynamic> schema;

  MetadataType({
    required this.name,
    required this.schema,
  });

  factory MetadataType.fromJson(Map<String, dynamic> json) =>
      _$MetadataTypeFromJson(json);
  Map<String, dynamic> toJson() => _$MetadataTypeToJson(this);
}

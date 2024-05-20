import 'package:json_annotation/json_annotation.dart';
import 'package:uuid/uuid.dart';

part 'metadata_type.g.dart';

@JsonSerializable()
class MetadataType {
  final String id;
  final String name;
  final Map<String, dynamic> schema;

  MetadataType({
    String? id,
    required this.name,
    required this.schema,
  }) : id = id ?? const Uuid().v4();

  factory MetadataType.fromJson(Map<String, dynamic> json) =>
      _$MetadataTypeFromJson(json);
  Map<String, dynamic> toJson() => _$MetadataTypeToJson(this);
}

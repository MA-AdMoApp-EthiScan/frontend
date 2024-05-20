// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'metadata_type.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MetadataType _$MetadataTypeFromJson(Map<String, dynamic> json) => MetadataType(
      id: json['id'] as String?,
      name: json['name'] as String,
      schema: json['schema'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$MetadataTypeToJson(MetadataType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'schema': instance.schema,
    };

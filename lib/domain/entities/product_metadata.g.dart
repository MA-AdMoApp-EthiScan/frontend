// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_metadata.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductMetadata _$ProductMetadataFromJson(Map<String, dynamic> json) =>
    ProductMetadata(
      id: json['id'] as String?,
      type: MetadataType.fromJson(json['type'] as Map<String, dynamic>),
      data: json['data'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$ProductMetadataToJson(ProductMetadata instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'data': instance.data,
    };

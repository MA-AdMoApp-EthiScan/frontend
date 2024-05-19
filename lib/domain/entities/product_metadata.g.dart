// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_metadata.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductMetadata _$ProductMetadataFromJson(Map<String, dynamic> json) =>
    ProductMetadata(
      id: json['id'],
      metadataTypeId: json['metadataTypeId'] as String,
      data: json['data'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$ProductMetadataToJson(ProductMetadata instance) =>
    <String, dynamic>{
      'id': instance.id,
      'metadataTypeId': instance.metadataTypeId,
      'data': instance.data,
    };

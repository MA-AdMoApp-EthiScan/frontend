// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_metadata.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductMetadata _$ProductMetadataFromJson(Map<String, dynamic> json) =>
    ProductMetadata(
      type: MetadataType.fromJson(json['type'] as Map<String, dynamic>),
      data: json['data'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$ProductMetadataToJson(ProductMetadata instance) =>
    <String, dynamic>{
      'type': instance.type,
      'data': instance.data,
    };

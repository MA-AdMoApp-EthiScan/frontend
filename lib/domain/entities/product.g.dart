// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Product _$ProductFromJson(Map<String, dynamic> json) => Product(
      id: json['id'],
      name: json['name'] as String,
      imageUrl: json['imageUrl'] as String,
      description: json['description'] as String,
      certificationIds: (json['certificationIds'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      productMetadataIds: (json['productMetadataIds'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$ProductToJson(Product instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'imageUrl': instance.imageUrl,
      'description': instance.description,
      'certificationIds': instance.certificationIds,
      'productMetadataIds': instance.productMetadataIds,
    };

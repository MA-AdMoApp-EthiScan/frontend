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
      productMetadatas: (json['productMetadatas'] as List<dynamic>?)
          ?.map((e) => ProductMetadata.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ProductToJson(Product instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'imageUrl': instance.imageUrl,
      'description': instance.description,
      'certificationIds': instance.certificationIds,
      'productMetadatas': instance.productMetadatas,
    };

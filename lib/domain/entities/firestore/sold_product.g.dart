// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sold_product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SoldProduct _$SoldProductFromJson(Map<String, dynamic> json) => SoldProduct(
      productId: json['productId'] as String,
      price: (json['price'] as num).toDouble(),
    );

Map<String, dynamic> _$SoldProductToJson(SoldProduct instance) =>
    <String, dynamic>{
      'productId': instance.productId,
      'price': instance.price,
    };

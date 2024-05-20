// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'supplier.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Supplier _$SupplierFromJson(Map<String, dynamic> json) => Supplier(
      name: json['name'] as String,
      products: (json['products'] as List<dynamic>)
          .map((e) => SoldProduct.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SupplierToJson(Supplier instance) => <String, dynamic>{
      'name': instance.name,
      'products': instance.products,
    };

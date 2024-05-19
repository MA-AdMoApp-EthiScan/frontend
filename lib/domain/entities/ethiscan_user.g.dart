// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ethiscan_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EthiscanUser _$EthiscanUserFromJson(Map<String, dynamic> json) => EthiscanUser(
      id: json['id'] as String,
      name: json['name'] as String,
      email: json['email'] as String,
      favoriteProducts: (json['favoriteProducts'] as List<dynamic>?)
          ?.map((e) => Product.fromJson(e as Map<String, dynamic>))
          .toList(),
      userPreferences: json['userPreferences'] == null
          ? null
          : UserPreferences.fromJson(
              json['userPreferences'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$EthiscanUserToJson(EthiscanUser instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'favoriteProducts': instance.favoriteProducts,
      'userPreferences': instance.userPreferences,
    };

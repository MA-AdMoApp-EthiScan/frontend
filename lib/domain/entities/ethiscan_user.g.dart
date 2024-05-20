// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ethiscan_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EthiscanUser _$EthiscanUserFromJson(Map<String, dynamic> json) => EthiscanUser(
      uid: json['uid'] as String,
      favoriteProducts: (json['favoriteProducts'] as List<dynamic>?)
          ?.map((e) => Product.fromJson(e as Map<String, dynamic>))
          .toList(),
      metadataTypeIds: (json['metadataTypeIds'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$EthiscanUserToJson(EthiscanUser instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'favoriteProducts': instance.favoriteProducts,
      'metadataTypeIds': instance.metadataTypeIds,
    };

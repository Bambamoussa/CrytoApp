// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'crypto_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CryptoModel _$$_CryptoModelFromJson(Map<String, dynamic> json) =>
    _$_CryptoModel(
      id: json['id'] as String,
      name: json['name'] as String,
      symbol: json['symbol'] as String,
      image: json['image'] as String,
      currentPrice: json['current_price'] as num,
      priceChange24: json['price_change_24h'] as num,
    );

Map<String, dynamic> _$$_CryptoModelToJson(_$_CryptoModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'symbol': instance.symbol,
      'image': instance.image,
      'current_price': instance.currentPrice,
      'price_change_24h': instance.priceChange24,
    };

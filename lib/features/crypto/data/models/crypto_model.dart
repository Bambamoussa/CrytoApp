import 'package:cryptomonnaie/features/crypto/domain/entities/crypto_entity.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'crypto_model.freezed.dart';
part 'crypto_model.g.dart';

@freezed
class CryptoModel with _$CryptoModel {
  const factory CryptoModel({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'symbol') required String symbol,
    @JsonKey(name: 'image') required String image,
    @JsonKey(name: 'current_price') required num currentPrice,
    @JsonKey(name: 'price_change_24h') required num priceChange24,
  }) = _CryptoModel;

  factory CryptoModel.fromJson(Map<String, dynamic> json) => _$CryptoModelFromJson(json);
}

extension CryptoModelX on CryptoModel {
  CryptoEntity toDomain() {
    return CryptoEntity(
        id: id, image: image, name: name, currentPrice: currentPrice, priceChange24: priceChange24, symbol: symbol);
  }
}

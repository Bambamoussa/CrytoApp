import 'package:freezed_annotation/freezed_annotation.dart';

part 'crypto_entity.freezed.dart';

@freezed
class CryptoEntity with _$CryptoEntity {
  const factory CryptoEntity({
    required String id,
    required String name,
    required String symbol,
    required String image,
    required num currentPrice,
    required num priceChange24,
  }) = _CryptoEntity;
}

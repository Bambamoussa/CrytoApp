import 'package:cryptomonnaie/features/crypto/domain/entities/chart_price_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'chart_price_model.freezed.dart';
part 'chart_price_model.g.dart';

@freezed
class ChartPriceModel with _$ChartPriceModel {
  const factory ChartPriceModel({
    @JsonKey(name: 'prices') required List<dynamic> prices,
  }) = _ChartPriceModel;

  factory ChartPriceModel.fromJson(Map<String, dynamic> json) => _$ChartPriceModelFromJson(json);
}

extension ChartPriceModelX on ChartPriceModel {
  ChartPriceEntity toDomain() => ChartPriceEntity(prices: prices);
}

import 'package:freezed_annotation/freezed_annotation.dart';

part 'chart_price_entity.freezed.dart';

@freezed
class ChartPriceEntity with _$ChartPriceEntity {
  const factory ChartPriceEntity({
    required List<dynamic> prices,
  }) = _ChartPriceEntity;
}

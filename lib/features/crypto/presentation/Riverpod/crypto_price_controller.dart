import 'package:cryptomonnaie/features/crypto/domain/entities/chart_price_entity.dart';
import 'package:cryptomonnaie/features/crypto/domain/usescases/chart_prices_usescases.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CryptoPriceController extends StateNotifier<AsyncValue<ChartPriceEntity>> {
  CryptoPriceController({required this.chartPriceUsesCases, required this.coinsId})
      : super(const AsyncValue.loading()) {
    getChartPrice(coinsId);
  }
  final ChartPriceUsesCases chartPriceUsesCases;
  final String coinsId;

  Future<void> getChartPrice(String coinsId) {
    return chartPriceUsesCases(coinsId).then((result) => result.when(
          failure: (failure) => state = AsyncValue.error(failure, StackTrace.current),
          success: (data) => state = AsyncValue.data(data),
        ));
  }
}

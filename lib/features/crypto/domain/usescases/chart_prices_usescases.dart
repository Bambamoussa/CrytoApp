import 'package:cryptomonnaie/core/domain/entities/result.dart';
import 'package:cryptomonnaie/features/crypto/domain/entities/chart_price_entity.dart';
import 'package:cryptomonnaie/features/crypto/domain/repositories/crypto_repository.dart';

class ChartPriceUsesCases {
  final CryptoRepository cryptoRepository;

  ChartPriceUsesCases(this.cryptoRepository);

  Future<Result<ChartPriceEntity>> call(String coinsId) async => cryptoRepository.getChartPrice(coinsId);
}

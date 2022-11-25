import 'package:cryptomonnaie/core/domain/entities/result.dart';
import 'package:cryptomonnaie/features/crypto/domain/entities/article_entity.dart';
import 'package:cryptomonnaie/features/crypto/domain/entities/chart_price_entity.dart';
import 'package:cryptomonnaie/features/crypto/domain/entities/crypto_entity.dart';

abstract class CryptoRepository {
  Future<Result<List<CryptoEntity>>> getCryptoList();
  Future<Result<ChartPriceEntity>> getChartPrice(String coinsId);
  Future<Result<List<ArticleEntity>>> getNews(String coinsId);
}

import 'package:cryptomonnaie/core/domain/entities/result.dart';
import 'package:cryptomonnaie/features/crypto/domain/entities/article_entity.dart';
import 'package:cryptomonnaie/features/crypto/domain/repositories/crypto_repository.dart';

class NewsUsesCases {
  final CryptoRepository cryptoRepository;

  NewsUsesCases(this.cryptoRepository);

  Future<Result<List<ArticleEntity>>> call(String coinsId) async => cryptoRepository.getNews(coinsId);
}

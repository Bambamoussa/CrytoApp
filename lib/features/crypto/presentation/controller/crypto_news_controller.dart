import 'package:cryptomonnaie/features/crypto/domain/entities/article_entity.dart';
import 'package:cryptomonnaie/features/crypto/domain/usescases/news_usescases.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CryptoNewsController extends StateNotifier<AsyncValue<List<ArticleEntity>>> {
  CryptoNewsController({required this.newsUsesCases, required this.coinsId}) : super(const AsyncValue.loading()) {
    getNews(coinsId);
  }
  final NewsUsesCases newsUsesCases;
  final String coinsId;

  Future<void> getNews(String coinsId) async {
    newsUsesCases(coinsId).then((result) => result.when(
          failure: (failure) => state = AsyncValue.error(failure, StackTrace.current),
          success: (data) => state = AsyncValue.data(data),
        ));
  }
}

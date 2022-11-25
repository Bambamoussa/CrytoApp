import 'package:cryptomonnaie/core/domain/entities/result.dart';
import 'package:cryptomonnaie/features/crypto/domain/entities/article_entity.dart';
import 'package:cryptomonnaie/features/crypto/domain/repositories/crypto_repository.dart';
import 'package:cryptomonnaie/features/crypto/domain/usescases/news_usescases.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockCryptoRepository extends Mock implements CryptoRepository {}

void main() {
  late MockCryptoRepository mockCryptoRepository;
  late NewsUsesCases newsUsesCases;

  setUp(() {
    mockCryptoRepository = MockCryptoRepository();
    newsUsesCases = NewsUsesCases(mockCryptoRepository);
  });

  final articleList = [
    const ArticleEntity(
        title: 'Bitcoin Price Slides to Two-Year Low as Fears Persist Over FTX Contagion',
        description:
            'he price of Bitcoin slid to just 15,680 on Tuesday morning, the lowest level in over two years for the cryptocurrency',
        source: 'Gizmodo.com',
        url: 'https://gizmodo.com/bitcoin-price-slides-fears-persist-ftx-contagion-eth-1849811382',
        publishedAt: '2022-11-22T11:00:00Z',
        urlToImage:
            'https://i.kinja-img.com/gawker-media/image/upload/c_fill,f_auto,fl_progressive,g_center,h_675,pg_1,q_80,w_1200/e20e15c2c69269e8476e99a9a8e9ed9a.png')
  ];

  test('should get information on reposytory', () async {
    when(() => mockCryptoRepository.getNews('bitcoin')).thenAnswer((_) async => Result.success(articleList));
    final result = await newsUsesCases.call('bitcoin');
    expect(result, Result.success(articleList));
  });
}

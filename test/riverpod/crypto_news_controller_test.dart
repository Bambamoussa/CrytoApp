import 'package:cryptomonnaie/core/domain/entities/result.dart';
import 'package:cryptomonnaie/core/error/failure.dart';
import 'package:cryptomonnaie/features/crypto/domain/entities/article_entity.dart';
import 'package:cryptomonnaie/features/crypto/domain/usescases/news_usescases.dart';
import 'package:cryptomonnaie/features/crypto/presentation/controller/providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockNewsUsesCases extends Mock implements NewsUsesCases {}

void main() {
  late MockNewsUsesCases mockNewsUsesCases;
  late ProviderContainer container;
  setUp(() {
    mockNewsUsesCases = MockNewsUsesCases();
    ProviderContainer makeProviderContainer(mockNewsUsesCases) {
      final container = ProviderContainer(
        overrides: [
          newsUseCaseProvider.overrideWithValue(mockNewsUsesCases),
        ],
      );
      return container;
    }

    container = makeProviderContainer(mockNewsUsesCases);
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

  group('test of news controller', () {
    test(' getNews success ', () async {
      //arrange
      when(() => mockNewsUsesCases('bitcoin')).thenAnswer((_) => Future.value(Result.success(articleList)));
      //act
      final controller = container.read(cryptoNewscontrollerProvider('bitcoin').notifier);
      //verify
      expectLater(
        controller.stream,
        emitsInOrder([AsyncData<List<ArticleEntity>>(articleList)]),
      );

      verify(() => mockNewsUsesCases('bitcoin')).called(1);
    });

    test('getNews fail', () {
      //arrange
      when(() => mockNewsUsesCases('bitcoin')).thenAnswer((_) => Future.value(const Result.failure(FailureOffline())));
      //act
      final controller = container.read(cryptoNewscontrollerProvider('bitcoin').notifier);
      //verify
      expectLater(
        controller.stream,
        emitsInOrder([
          predicate<AsyncValue<List<ArticleEntity>>>((value) {
            expect(value.hasError, true);
            return true;
          }),
        ]),
      );
      verify(() => mockNewsUsesCases('bitcoin')).called(1);
    });
  });
}

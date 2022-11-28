import 'package:cryptomonnaie/core/domain/entities/result.dart';
import 'package:cryptomonnaie/core/error/failure.dart';
import 'package:cryptomonnaie/features/crypto/domain/entities/chart_price_entity.dart';
import 'package:cryptomonnaie/features/crypto/domain/usescases/chart_prices_usescases.dart';
import 'package:cryptomonnaie/features/crypto/presentation/controller/providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockChartPriceUsesCases extends Mock implements ChartPriceUsesCases {}

void main() {
  late MockChartPriceUsesCases mockChartPriceUsesCases;
  late ProviderContainer container;
  setUp(() {
    mockChartPriceUsesCases = MockChartPriceUsesCases();
    ProviderContainer makeProviderContainer(mockChartPriceUsesCases) {
      final container = ProviderContainer(
        overrides: [
          chartPriceUseCaseProvider.overrideWithValue(mockChartPriceUsesCases),
        ],
      );
      return container;
    }

    container = makeProviderContainer(mockChartPriceUsesCases);
  });

  const chartPriceEntity = ChartPriceEntity(prices: [
    [1669202126898, 1.0010467551651276],
    [1669202566065, 1.000734143889808]
  ]);

  group('test of price controller', () {
    test(' getPrice success ', () async {
      //arrange
      when(() => mockChartPriceUsesCases('bitcoin'))
          .thenAnswer((_) => Future.value(const Result.success(chartPriceEntity)));
      //act
      final controller = container.read(cryptoPricecontrollerProvider('bitcoin').notifier);
      //verify
      expectLater(
        controller.stream,
        emitsInOrder([const AsyncData<ChartPriceEntity>(chartPriceEntity)]),
      );
      verify(() => mockChartPriceUsesCases('bitcoin')).called(1);
    });

    test(' getPrice fail ', () async {
      // arrange
      when(() => mockChartPriceUsesCases('bitcoin'))
          .thenAnswer((_) => Future.value(const Result.failure(Failure.offline())));
      // act
      final controller = container.read(cryptoPricecontrollerProvider('bitcoin').notifier);
      //verify
      expectLater(
        controller.stream,
        emitsInOrder([
          predicate<AsyncValue<ChartPriceEntity>>((value) {
            expect(value.hasError, true);
            return true;
          }),
        ]),
      );
      verify(() => mockChartPriceUsesCases('bitcoin')).called(1);
    });
  });
}

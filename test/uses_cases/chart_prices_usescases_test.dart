import 'package:cryptomonnaie/core/domain/entities/result.dart';
import 'package:cryptomonnaie/features/crypto/domain/entities/chart_price_entity.dart';
import 'package:cryptomonnaie/features/crypto/domain/repositories/crypto_repository.dart';
import 'package:cryptomonnaie/features/crypto/domain/usescases/chart_prices_usescases.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockCryptoRepository extends Mock implements CryptoRepository {}

void main() {
  late MockCryptoRepository mockCryptoRepository;
  late ChartPriceUsesCases chartPriceUsesCases;

  setUp(() {
    mockCryptoRepository = MockCryptoRepository();
    chartPriceUsesCases = ChartPriceUsesCases(mockCryptoRepository);
  });
  const chartPriceEntity = ChartPriceEntity(prices: [
    [1669202126898, 1.0010467551651276],
    [1669202566065, 1.000734143889808]
  ]);

  test('should get information on reposytory', () async {
    when(() => mockCryptoRepository.getChartPrice('bitcoin'))
        .thenAnswer((_) async => const Result.success(chartPriceEntity));
    final result = await chartPriceUsesCases('bitcoin');
    expect(result, const Result.success(chartPriceEntity));
  });
}

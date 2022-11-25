import 'package:cryptomonnaie/core/domain/entities/result.dart';
import 'package:cryptomonnaie/features/crypto/domain/entities/crypto_entity.dart';
import 'package:cryptomonnaie/features/crypto/domain/repositories/crypto_repository.dart';
import 'package:cryptomonnaie/features/crypto/domain/usescases/crypto_list_usescases.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockCryptoRepository extends Mock implements CryptoRepository {}

void main() {
  late MockCryptoRepository mockCryptoRepository;
  late CryptoListUsesCases cryptoUsesCases;

  setUp(() {
    mockCryptoRepository = MockCryptoRepository();
    cryptoUsesCases = CryptoListUsesCases(mockCryptoRepository);
  });

  final cryptoList = <CryptoEntity>[
    const CryptoEntity(
        id: 'bitcoin',
        name: 'Bitcoin',
        symbol: 'btc',
        image: ' https://assets.coingecko.com/coins/images/1/large/bitcoin.png?1547033579',
        currentPrice: 16573.46,
        priceChange24: 3445)
  ];
  test('should get information on reposytory', () async {
    when(mockCryptoRepository.getCryptoList).thenAnswer((_) async => Result.success(cryptoList));
    final result = await cryptoUsesCases.call();
    expect(result, Result.success(cryptoList));
  });
}

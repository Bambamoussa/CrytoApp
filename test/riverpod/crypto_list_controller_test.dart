import 'package:cryptomonnaie/core/domain/entities/result.dart';
import 'package:cryptomonnaie/core/error/failure.dart';
import 'package:cryptomonnaie/features/crypto/domain/entities/crypto_entity.dart';
import 'package:cryptomonnaie/features/crypto/domain/usescases/crypto_list_usescases.dart';
import 'package:cryptomonnaie/features/crypto/presentation/Riverpod/providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockCryptoListUsesCases extends Mock implements CryptoListUsesCases {}

void main() {
  late MockCryptoListUsesCases mockCryptoListUsesCases;
  late ProviderContainer container;

  setUp(() {
    mockCryptoListUsesCases = MockCryptoListUsesCases();
    ProviderContainer makeProviderContainer(mockCryptoListUsesCases) {
      final container = ProviderContainer(
        overrides: [
          cryptoListUseCaseProvider.overrideWithValue(mockCryptoListUsesCases),
        ],
      );

      return container;
    }

    container = makeProviderContainer(mockCryptoListUsesCases);
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

  group('test of cryptoListController', () {
    test(' getCryptoData success ', () async {
      //arrange
      when(mockCryptoListUsesCases.call).thenAnswer((_) => Future.value(Result.success(cryptoList)));
      //act
      final controller = container.read(cryptoListcontrollerProvider.notifier);
      // verify
      expectLater(
        controller.stream,
        emitsInOrder([AsyncData<List<CryptoEntity>>(cryptoList)]),
      );

      verify(mockCryptoListUsesCases.call).called(1);
    });

    test(' getCryptoData fail ', () async {
      //arrange
      when(mockCryptoListUsesCases.call).thenAnswer((_) => Future.value(const Result.failure(Failure.offline())));
      // act
      final controller = container.read(cryptoListcontrollerProvider.notifier);
      // verify
      expectLater(
        controller.stream,
        emitsInOrder([
          predicate<AsyncValue<List<CryptoEntity>>>((value) {
            expect(value.hasError, true);
            return true;
          }),
        ]),
      );

      verify(mockCryptoListUsesCases.call).called(1);
    });
  });
}

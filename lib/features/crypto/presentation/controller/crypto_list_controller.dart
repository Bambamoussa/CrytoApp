import 'package:cryptomonnaie/features/crypto/domain/entities/crypto_entity.dart';
import 'package:cryptomonnaie/features/crypto/domain/usescases/crypto_list_usescases.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CryptoListController extends StateNotifier<AsyncValue<List<CryptoEntity>>> {
  CryptoListController({
    required this.cryptoUsesCases,
  }) : super(const AsyncValue.loading()) {
    getCryptoList();
  }

  final CryptoListUsesCases cryptoUsesCases;
  Future<void> getCryptoList() async {
    cryptoUsesCases.call().then((result) => result.when(
          failure: (failure) => state = AsyncValue.error(failure, StackTrace.current),
          success: (data) => state = AsyncValue.data(data),
        ));
  }
}

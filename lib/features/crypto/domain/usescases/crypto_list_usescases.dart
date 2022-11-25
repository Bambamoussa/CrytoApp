import 'package:cryptomonnaie/core/domain/entities/result.dart';
import 'package:cryptomonnaie/features/crypto/domain/entities/crypto_entity.dart';
import 'package:cryptomonnaie/features/crypto/domain/repositories/crypto_repository.dart';

class CryptoListUsesCases {
  final CryptoRepository cryptoRepository;

  CryptoListUsesCases(this.cryptoRepository);

  Future<Result<List<CryptoEntity>>> call() async => cryptoRepository.getCryptoList();
}

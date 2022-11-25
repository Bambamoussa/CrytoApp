import 'package:cryptomonnaie/core/network/network_info.dart';
import 'package:cryptomonnaie/di/di_ext.dart';
import 'package:cryptomonnaie/features/crypto/data/datasource/crypto_remote_datasource.dart';
import 'package:cryptomonnaie/features/crypto/data/repositories/crypto_repository_impl.dart';
import 'package:cryptomonnaie/features/crypto/domain/repositories/crypto_repository.dart';
import 'package:cryptomonnaie/features/crypto/domain/usescases/crypto_list_usescases.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

part '../features/crypto/common/crypto_injection.dart';

final sl = GetIt.instance;
final Dio dio = Dio();

void init() {
  _featureCrypto();
}

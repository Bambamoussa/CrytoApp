part of '../../../di/injection_container.dart';

void _featureCrypto() {
  sl
    // DataSources
    ..injectDataSource<CryptoRemoteDataSource>(() => CryptoRemoteDataSourceImpl(dio: dio))

    // Network
    ..injectNetwork<NetworkInfo>(() => NetworkInfoImpl())
    // Repositories
    ..injectRepository<CryptoRepository>(() => CryptoRepositoryImpl(cryptoRemoteDataSource: sl(), networkInfo: sl()))
    // UseCases
    ..injectUseCase<CryptoListUsesCases>(() => CryptoListUsesCases(sl()));
}

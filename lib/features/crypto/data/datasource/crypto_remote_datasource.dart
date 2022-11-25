import 'package:cryptomonnaie/core/constants/api_constant.dart';
import 'package:cryptomonnaie/core/data/datasource/remote_data_source.dart';

abstract class CryptoRemoteDataSource {
  Future<dynamic> getCryptoList();
  Future<dynamic> getChartPrice(String coinsId);
  Future<dynamic> getNews(String coinsId);
}

class CryptoRemoteDataSourceImpl extends RemoteDataSource implements CryptoRemoteDataSource {
  CryptoRemoteDataSourceImpl({required super.dio});

  @override
  Future<dynamic> getCryptoList() async => performGetRequestApi(apiEndpoint: ApiConstants.cryptoUrl);

  @override
  Future<dynamic> getChartPrice(String coinsId) async => performGetRequestApi(apiEndpoint: ApiConstants.chart(coinsId));

  @override
  Future getNews(String coinsId) async => performGetRequestApi(apiEndpoint: ApiConstants.news(coinsId));
}

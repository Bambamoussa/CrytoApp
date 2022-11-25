import 'package:cryptomonnaie/core/data/repositories/base_repository.dart';
import 'package:cryptomonnaie/core/domain/entities/result.dart';
import 'package:cryptomonnaie/core/error/failure.dart';
import 'package:cryptomonnaie/core/network/network_info.dart';
import 'package:cryptomonnaie/features/crypto/data/datasource/crypto_remote_datasource.dart';
import 'package:cryptomonnaie/features/crypto/data/models/article_model.dart';
import 'package:cryptomonnaie/features/crypto/data/models/chart_price_model.dart';
import 'package:cryptomonnaie/features/crypto/data/models/crypto_model.dart';
import 'package:cryptomonnaie/features/crypto/domain/entities/article_entity.dart';
import 'package:cryptomonnaie/features/crypto/domain/entities/chart_price_entity.dart';
import 'package:cryptomonnaie/features/crypto/domain/entities/crypto_entity.dart';
import 'package:cryptomonnaie/features/crypto/domain/repositories/crypto_repository.dart';

class CryptoRepositoryImpl extends CryptoRepository with BaseRepository {
  CryptoRepositoryImpl({required this.cryptoRemoteDataSource, required this.networkInfo});
  final CryptoRemoteDataSource cryptoRemoteDataSource;
  final NetworkInfo networkInfo;

  @override
  Future<Result<List<CryptoEntity>>> getCryptoList() async {
    if (!await networkInfo.isConnected) return const Result.failure(Failure.offline());

    try {
      final cryptoResponse = await cryptoRemoteDataSource.getCryptoList();

      final crypto = List<CryptoEntity>.from(
        cryptoResponse.map((e) => CryptoModel.fromJson(e).toDomain()),
      );
      return Result.success(crypto);
    } on Exception catch (e) {
      return Result.failure(dispatchException(e));
    }
  }

  @override
  Future<Result<ChartPriceEntity>> getChartPrice(String coinsId) async {
    if (!await networkInfo.isConnected) return const Result.failure(Failure.offline());

    try {
      final chartPriceResponse = await cryptoRemoteDataSource.getChartPrice(coinsId);

      final chartPrice = ChartPriceModel.fromJson(chartPriceResponse).toDomain();

      return Result.success(chartPrice);
    } on Exception catch (e) {
      return Result.failure(dispatchException(e));
    }
  }

  @override
  Future<Result<List<ArticleEntity>>> getNews(String coinsId) async {
    if (!await networkInfo.isConnected) return const Result.failure(Failure.offline());

    try {
      final articleResponse = await cryptoRemoteDataSource.getNews(coinsId);

      final article = List<ArticleEntity>.from(
        articleResponse['articles'].map((e) => ArticleModel.fromJson(e).toDomain()),
      );

      return Result.success(article);
    } on Exception catch (e) {
      return Result.failure(dispatchException(e));
    }
  }
}

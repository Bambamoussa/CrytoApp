import 'package:cryptomonnaie/features/crypto/domain/entities/article_entity.dart';
import 'package:cryptomonnaie/features/crypto/domain/entities/chart_price_entity.dart';
import 'package:cryptomonnaie/features/crypto/domain/entities/crypto_entity.dart';
import 'package:cryptomonnaie/features/crypto/domain/repositories/crypto_repository.dart';
import 'package:cryptomonnaie/features/crypto/domain/usescases/chart_prices_usescases.dart';
import 'package:cryptomonnaie/features/crypto/domain/usescases/crypto_list_usescases.dart';
import 'package:cryptomonnaie/features/crypto/domain/usescases/news_usescases.dart';
import 'package:cryptomonnaie/features/crypto/presentation/controller/crypto_list_controller.dart';
import 'package:cryptomonnaie/features/crypto/presentation/controller/crypto_news_controller.dart';
import 'package:cryptomonnaie/features/crypto/presentation/controller/crypto_price_controller.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../di/injection_container.dart' as di;

final cryptoRepository = di.sl<CryptoRepository>();
final cryptoUsesCases = CryptoListUsesCases(cryptoRepository);
final chartPriceUsesCases = ChartPriceUsesCases(cryptoRepository);
final newsUsesCases = NewsUsesCases(cryptoRepository);
final cryptoListUseCaseProvider = Provider<CryptoListUsesCases>((ref) => cryptoUsesCases);
final chartPriceUseCaseProvider = Provider<ChartPriceUsesCases>((ref) => chartPriceUsesCases);
final newsUseCaseProvider = Provider<NewsUsesCases>((ref) => newsUsesCases);

final cryptoListcontrollerProvider =
    StateNotifierProvider.autoDispose<CryptoListController, AsyncValue<List<CryptoEntity>>>(
        (ref) => CryptoListController(
              cryptoUsesCases: ref.watch(cryptoListUseCaseProvider),
            ));

final cryptoPricecontrollerProvider = StateNotifierProvider.family
    .autoDispose<CryptoPriceController, AsyncValue<ChartPriceEntity>, String>((ref, String coinsId) =>
        CryptoPriceController(chartPriceUsesCases: ref.watch(chartPriceUseCaseProvider), coinsId: coinsId));

final cryptoNewscontrollerProvider = StateNotifierProvider.family
    .autoDispose<CryptoNewsController, AsyncValue<List<ArticleEntity>>, String>(
        (ref, String coinsId) => CryptoNewsController(newsUsesCases: ref.watch(newsUseCaseProvider), coinsId: coinsId));

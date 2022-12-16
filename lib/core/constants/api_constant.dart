import 'package:cryptomonnaie/env/env.dart';

class ApiConstants {
  ApiConstants._();
  static const String cryptoUrl = 'https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd';
  static String chart(coinsId) => 'https://api.coingecko.com/api/v3/coins/$coinsId/market_chart?vs_currency=usd&days=1';
  static String news(coinsId) =>
      'https://newsapi.org/v2/everything?q=$coinsId&sortBy=popularity&apiKey=${Env.apiKey}';
}

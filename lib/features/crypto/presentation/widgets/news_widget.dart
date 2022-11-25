import 'package:cryptomonnaie/core/constants/app_constant.dart';
import 'package:cryptomonnaie/features/crypto/domain/entities/article_entity.dart';
import 'package:cryptomonnaie/features/crypto/presentation/Riverpod/providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'package:url_launcher/url_launcher_string.dart';

class NewsWidget extends StatelessWidget {
  const NewsWidget({Key? key, required this.cryptoID}) : super(key: key);
  final String cryptoID;

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        final AsyncValue news = ref.watch(cryptoNewscontrollerProvider(cryptoID));
        return news.when(
          data: (data) => _News(news: data),
          error: (error, stackTrace) => const Text(AppConstants.noArticle),
          loading: () => const CircularProgressIndicator(),
        );
      },
    );
  }
}

class _News extends StatelessWidget {
  const _News({required this.news});
  final List<ArticleEntity> news;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: news.map<Widget>((article) {
        var date = DateTime.parse(article.publishedAt);
        return ListTile(
            onTap: () {
              _launchURL(article.url);
            },
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 10),
                Text(
                  article.title,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  article.description,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Colors.grey.shade600,
                    fontSize: 14,
                  ),
                ),
                const SizedBox(height: 5),
                Row(
                  children: [
                    Text(
                      '${timeago.format(date)}  •',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(width: 5),
                    Text(
                      article.source,
                      style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
              ],
            ));
      }).toList(),
    );
  }

  void _launchURL(String url) async {
    if (!await launchUrlString(url)) throw '${AppConstants.noLauch} $url';
  }
}

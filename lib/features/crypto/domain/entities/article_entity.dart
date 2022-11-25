import 'package:freezed_annotation/freezed_annotation.dart';

part 'article_entity.freezed.dart';

@freezed
class ArticleEntity with _$ArticleEntity {
  const factory ArticleEntity({
    String? id,
    required String title,
    required String description,
    required String source,
    required String url,
    required String publishedAt,
    required String urlToImage,
  }) = _ArticleEntity;
}

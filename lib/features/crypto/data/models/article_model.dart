import 'package:cryptomonnaie/features/crypto/domain/entities/article_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'article_model.freezed.dart';

@freezed
class ArticleModel with _$ArticleModel {
  const factory ArticleModel({
    @JsonKey(name: 'title') required String title,
    @JsonKey(name: 'description') required String description,
    @JsonKey(name: 'source') required String source,
    @JsonKey(name: 'url') required String url,
    @JsonKey(name: 'publishedAt') required String publishedAt,
    @JsonKey(name: 'urlToImage') required String urlToImage,
  }) = _ArticleModel;

  factory ArticleModel.fromJson(Map<String, dynamic> json) {
    return ArticleModel(
      title: json['title'] ?? '',
      description: json['description'] ?? '',
      source: json['source']['name'] ?? '',
      url: json['url'],
      publishedAt: json['publishedAt'] ?? '',
      urlToImage: json['urlToImage'] ?? '',
    );
  }
}

extension ArticleModelX on ArticleModel {
  ArticleEntity toDomain() => ArticleEntity(
      title: title,
      description: description,
      source: source,
      url: url,
      publishedAt: publishedAt,
      urlToImage: urlToImage);
}

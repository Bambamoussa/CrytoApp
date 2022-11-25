// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'article_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ArticleModel {
  @JsonKey(name: 'title')
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'source')
  String get source => throw _privateConstructorUsedError;
  @JsonKey(name: 'url')
  String get url => throw _privateConstructorUsedError;
  @JsonKey(name: 'publishedAt')
  String get publishedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'urlToImage')
  String get urlToImage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ArticleModelCopyWith<ArticleModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArticleModelCopyWith<$Res> {
  factory $ArticleModelCopyWith(
          ArticleModel value, $Res Function(ArticleModel) then) =
      _$ArticleModelCopyWithImpl<$Res, ArticleModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'title') String title,
      @JsonKey(name: 'description') String description,
      @JsonKey(name: 'source') String source,
      @JsonKey(name: 'url') String url,
      @JsonKey(name: 'publishedAt') String publishedAt,
      @JsonKey(name: 'urlToImage') String urlToImage});
}

/// @nodoc
class _$ArticleModelCopyWithImpl<$Res, $Val extends ArticleModel>
    implements $ArticleModelCopyWith<$Res> {
  _$ArticleModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? source = null,
    Object? url = null,
    Object? publishedAt = null,
    Object? urlToImage = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      publishedAt: null == publishedAt
          ? _value.publishedAt
          : publishedAt // ignore: cast_nullable_to_non_nullable
              as String,
      urlToImage: null == urlToImage
          ? _value.urlToImage
          : urlToImage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ArticleModelCopyWith<$Res>
    implements $ArticleModelCopyWith<$Res> {
  factory _$$_ArticleModelCopyWith(
          _$_ArticleModel value, $Res Function(_$_ArticleModel) then) =
      __$$_ArticleModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'title') String title,
      @JsonKey(name: 'description') String description,
      @JsonKey(name: 'source') String source,
      @JsonKey(name: 'url') String url,
      @JsonKey(name: 'publishedAt') String publishedAt,
      @JsonKey(name: 'urlToImage') String urlToImage});
}

/// @nodoc
class __$$_ArticleModelCopyWithImpl<$Res>
    extends _$ArticleModelCopyWithImpl<$Res, _$_ArticleModel>
    implements _$$_ArticleModelCopyWith<$Res> {
  __$$_ArticleModelCopyWithImpl(
      _$_ArticleModel _value, $Res Function(_$_ArticleModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? source = null,
    Object? url = null,
    Object? publishedAt = null,
    Object? urlToImage = null,
  }) {
    return _then(_$_ArticleModel(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      publishedAt: null == publishedAt
          ? _value.publishedAt
          : publishedAt // ignore: cast_nullable_to_non_nullable
              as String,
      urlToImage: null == urlToImage
          ? _value.urlToImage
          : urlToImage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ArticleModel implements _ArticleModel {
  const _$_ArticleModel(
      {@JsonKey(name: 'title') required this.title,
      @JsonKey(name: 'description') required this.description,
      @JsonKey(name: 'source') required this.source,
      @JsonKey(name: 'url') required this.url,
      @JsonKey(name: 'publishedAt') required this.publishedAt,
      @JsonKey(name: 'urlToImage') required this.urlToImage});

  @override
  @JsonKey(name: 'title')
  final String title;
  @override
  @JsonKey(name: 'description')
  final String description;
  @override
  @JsonKey(name: 'source')
  final String source;
  @override
  @JsonKey(name: 'url')
  final String url;
  @override
  @JsonKey(name: 'publishedAt')
  final String publishedAt;
  @override
  @JsonKey(name: 'urlToImage')
  final String urlToImage;

  @override
  String toString() {
    return 'ArticleModel(title: $title, description: $description, source: $source, url: $url, publishedAt: $publishedAt, urlToImage: $urlToImage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ArticleModel &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.source, source) || other.source == source) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.publishedAt, publishedAt) ||
                other.publishedAt == publishedAt) &&
            (identical(other.urlToImage, urlToImage) ||
                other.urlToImage == urlToImage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, title, description, source, url, publishedAt, urlToImage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ArticleModelCopyWith<_$_ArticleModel> get copyWith =>
      __$$_ArticleModelCopyWithImpl<_$_ArticleModel>(this, _$identity);
}

abstract class _ArticleModel implements ArticleModel {
  const factory _ArticleModel(
          {@JsonKey(name: 'title') required final String title,
          @JsonKey(name: 'description') required final String description,
          @JsonKey(name: 'source') required final String source,
          @JsonKey(name: 'url') required final String url,
          @JsonKey(name: 'publishedAt') required final String publishedAt,
          @JsonKey(name: 'urlToImage') required final String urlToImage}) =
      _$_ArticleModel;

  @override
  @JsonKey(name: 'title')
  String get title;
  @override
  @JsonKey(name: 'description')
  String get description;
  @override
  @JsonKey(name: 'source')
  String get source;
  @override
  @JsonKey(name: 'url')
  String get url;
  @override
  @JsonKey(name: 'publishedAt')
  String get publishedAt;
  @override
  @JsonKey(name: 'urlToImage')
  String get urlToImage;
  @override
  @JsonKey(ignore: true)
  _$$_ArticleModelCopyWith<_$_ArticleModel> get copyWith =>
      throw _privateConstructorUsedError;
}

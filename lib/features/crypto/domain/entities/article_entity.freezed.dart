// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'article_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ArticleEntity {
  String? get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get source => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  String get publishedAt => throw _privateConstructorUsedError;
  String get urlToImage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ArticleEntityCopyWith<ArticleEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArticleEntityCopyWith<$Res> {
  factory $ArticleEntityCopyWith(
          ArticleEntity value, $Res Function(ArticleEntity) then) =
      _$ArticleEntityCopyWithImpl<$Res, ArticleEntity>;
  @useResult
  $Res call(
      {String? id,
      String title,
      String description,
      String source,
      String url,
      String publishedAt,
      String urlToImage});
}

/// @nodoc
class _$ArticleEntityCopyWithImpl<$Res, $Val extends ArticleEntity>
    implements $ArticleEntityCopyWith<$Res> {
  _$ArticleEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = null,
    Object? description = null,
    Object? source = null,
    Object? url = null,
    Object? publishedAt = null,
    Object? urlToImage = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
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
abstract class _$$_ArticleEntityCopyWith<$Res>
    implements $ArticleEntityCopyWith<$Res> {
  factory _$$_ArticleEntityCopyWith(
          _$_ArticleEntity value, $Res Function(_$_ArticleEntity) then) =
      __$$_ArticleEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String title,
      String description,
      String source,
      String url,
      String publishedAt,
      String urlToImage});
}

/// @nodoc
class __$$_ArticleEntityCopyWithImpl<$Res>
    extends _$ArticleEntityCopyWithImpl<$Res, _$_ArticleEntity>
    implements _$$_ArticleEntityCopyWith<$Res> {
  __$$_ArticleEntityCopyWithImpl(
      _$_ArticleEntity _value, $Res Function(_$_ArticleEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = null,
    Object? description = null,
    Object? source = null,
    Object? url = null,
    Object? publishedAt = null,
    Object? urlToImage = null,
  }) {
    return _then(_$_ArticleEntity(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
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

class _$_ArticleEntity implements _ArticleEntity {
  const _$_ArticleEntity(
      {this.id,
      required this.title,
      required this.description,
      required this.source,
      required this.url,
      required this.publishedAt,
      required this.urlToImage});

  @override
  final String? id;
  @override
  final String title;
  @override
  final String description;
  @override
  final String source;
  @override
  final String url;
  @override
  final String publishedAt;
  @override
  final String urlToImage;

  @override
  String toString() {
    return 'ArticleEntity(id: $id, title: $title, description: $description, source: $source, url: $url, publishedAt: $publishedAt, urlToImage: $urlToImage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ArticleEntity &&
            (identical(other.id, id) || other.id == id) &&
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
  int get hashCode => Object.hash(runtimeType, id, title, description, source,
      url, publishedAt, urlToImage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ArticleEntityCopyWith<_$_ArticleEntity> get copyWith =>
      __$$_ArticleEntityCopyWithImpl<_$_ArticleEntity>(this, _$identity);
}

abstract class _ArticleEntity implements ArticleEntity {
  const factory _ArticleEntity(
      {final String? id,
      required final String title,
      required final String description,
      required final String source,
      required final String url,
      required final String publishedAt,
      required final String urlToImage}) = _$_ArticleEntity;

  @override
  String? get id;
  @override
  String get title;
  @override
  String get description;
  @override
  String get source;
  @override
  String get url;
  @override
  String get publishedAt;
  @override
  String get urlToImage;
  @override
  @JsonKey(ignore: true)
  _$$_ArticleEntityCopyWith<_$_ArticleEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

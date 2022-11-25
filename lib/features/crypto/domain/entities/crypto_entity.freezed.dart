// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'crypto_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CryptoEntity {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get symbol => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  num get currentPrice => throw _privateConstructorUsedError;
  num get priceChange24 => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CryptoEntityCopyWith<CryptoEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CryptoEntityCopyWith<$Res> {
  factory $CryptoEntityCopyWith(
          CryptoEntity value, $Res Function(CryptoEntity) then) =
      _$CryptoEntityCopyWithImpl<$Res, CryptoEntity>;
  @useResult
  $Res call(
      {String id,
      String name,
      String symbol,
      String image,
      num currentPrice,
      num priceChange24});
}

/// @nodoc
class _$CryptoEntityCopyWithImpl<$Res, $Val extends CryptoEntity>
    implements $CryptoEntityCopyWith<$Res> {
  _$CryptoEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? symbol = null,
    Object? image = null,
    Object? currentPrice = null,
    Object? priceChange24 = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      currentPrice: null == currentPrice
          ? _value.currentPrice
          : currentPrice // ignore: cast_nullable_to_non_nullable
              as num,
      priceChange24: null == priceChange24
          ? _value.priceChange24
          : priceChange24 // ignore: cast_nullable_to_non_nullable
              as num,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CryptoEntityCopyWith<$Res>
    implements $CryptoEntityCopyWith<$Res> {
  factory _$$_CryptoEntityCopyWith(
          _$_CryptoEntity value, $Res Function(_$_CryptoEntity) then) =
      __$$_CryptoEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String symbol,
      String image,
      num currentPrice,
      num priceChange24});
}

/// @nodoc
class __$$_CryptoEntityCopyWithImpl<$Res>
    extends _$CryptoEntityCopyWithImpl<$Res, _$_CryptoEntity>
    implements _$$_CryptoEntityCopyWith<$Res> {
  __$$_CryptoEntityCopyWithImpl(
      _$_CryptoEntity _value, $Res Function(_$_CryptoEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? symbol = null,
    Object? image = null,
    Object? currentPrice = null,
    Object? priceChange24 = null,
  }) {
    return _then(_$_CryptoEntity(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      currentPrice: null == currentPrice
          ? _value.currentPrice
          : currentPrice // ignore: cast_nullable_to_non_nullable
              as num,
      priceChange24: null == priceChange24
          ? _value.priceChange24
          : priceChange24 // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc

class _$_CryptoEntity implements _CryptoEntity {
  const _$_CryptoEntity(
      {required this.id,
      required this.name,
      required this.symbol,
      required this.image,
      required this.currentPrice,
      required this.priceChange24});

  @override
  final String id;
  @override
  final String name;
  @override
  final String symbol;
  @override
  final String image;
  @override
  final num currentPrice;
  @override
  final num priceChange24;

  @override
  String toString() {
    return 'CryptoEntity(id: $id, name: $name, symbol: $symbol, image: $image, currentPrice: $currentPrice, priceChange24: $priceChange24)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CryptoEntity &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.symbol, symbol) || other.symbol == symbol) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.currentPrice, currentPrice) ||
                other.currentPrice == currentPrice) &&
            (identical(other.priceChange24, priceChange24) ||
                other.priceChange24 == priceChange24));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, symbol, image, currentPrice, priceChange24);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CryptoEntityCopyWith<_$_CryptoEntity> get copyWith =>
      __$$_CryptoEntityCopyWithImpl<_$_CryptoEntity>(this, _$identity);
}

abstract class _CryptoEntity implements CryptoEntity {
  const factory _CryptoEntity(
      {required final String id,
      required final String name,
      required final String symbol,
      required final String image,
      required final num currentPrice,
      required final num priceChange24}) = _$_CryptoEntity;

  @override
  String get id;
  @override
  String get name;
  @override
  String get symbol;
  @override
  String get image;
  @override
  num get currentPrice;
  @override
  num get priceChange24;
  @override
  @JsonKey(ignore: true)
  _$$_CryptoEntityCopyWith<_$_CryptoEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'crypto_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CryptoModel _$CryptoModelFromJson(Map<String, dynamic> json) {
  return _CryptoModel.fromJson(json);
}

/// @nodoc
mixin _$CryptoModel {
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'symbol')
  String get symbol => throw _privateConstructorUsedError;
  @JsonKey(name: 'image')
  String get image => throw _privateConstructorUsedError;
  @JsonKey(name: 'current_price')
  num get currentPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'price_change_24h')
  num get priceChange24 => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CryptoModelCopyWith<CryptoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CryptoModelCopyWith<$Res> {
  factory $CryptoModelCopyWith(
          CryptoModel value, $Res Function(CryptoModel) then) =
      _$CryptoModelCopyWithImpl<$Res, CryptoModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'symbol') String symbol,
      @JsonKey(name: 'image') String image,
      @JsonKey(name: 'current_price') num currentPrice,
      @JsonKey(name: 'price_change_24h') num priceChange24});
}

/// @nodoc
class _$CryptoModelCopyWithImpl<$Res, $Val extends CryptoModel>
    implements $CryptoModelCopyWith<$Res> {
  _$CryptoModelCopyWithImpl(this._value, this._then);

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
abstract class _$$_CryptoModelCopyWith<$Res>
    implements $CryptoModelCopyWith<$Res> {
  factory _$$_CryptoModelCopyWith(
          _$_CryptoModel value, $Res Function(_$_CryptoModel) then) =
      __$$_CryptoModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'symbol') String symbol,
      @JsonKey(name: 'image') String image,
      @JsonKey(name: 'current_price') num currentPrice,
      @JsonKey(name: 'price_change_24h') num priceChange24});
}

/// @nodoc
class __$$_CryptoModelCopyWithImpl<$Res>
    extends _$CryptoModelCopyWithImpl<$Res, _$_CryptoModel>
    implements _$$_CryptoModelCopyWith<$Res> {
  __$$_CryptoModelCopyWithImpl(
      _$_CryptoModel _value, $Res Function(_$_CryptoModel) _then)
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
    return _then(_$_CryptoModel(
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
@JsonSerializable()
class _$_CryptoModel with DiagnosticableTreeMixin implements _CryptoModel {
  const _$_CryptoModel(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'symbol') required this.symbol,
      @JsonKey(name: 'image') required this.image,
      @JsonKey(name: 'current_price') required this.currentPrice,
      @JsonKey(name: 'price_change_24h') required this.priceChange24});

  factory _$_CryptoModel.fromJson(Map<String, dynamic> json) =>
      _$$_CryptoModelFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'symbol')
  final String symbol;
  @override
  @JsonKey(name: 'image')
  final String image;
  @override
  @JsonKey(name: 'current_price')
  final num currentPrice;
  @override
  @JsonKey(name: 'price_change_24h')
  final num priceChange24;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CryptoModel(id: $id, name: $name, symbol: $symbol, image: $image, currentPrice: $currentPrice, priceChange24: $priceChange24)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CryptoModel'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('symbol', symbol))
      ..add(DiagnosticsProperty('image', image))
      ..add(DiagnosticsProperty('currentPrice', currentPrice))
      ..add(DiagnosticsProperty('priceChange24', priceChange24));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CryptoModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.symbol, symbol) || other.symbol == symbol) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.currentPrice, currentPrice) ||
                other.currentPrice == currentPrice) &&
            (identical(other.priceChange24, priceChange24) ||
                other.priceChange24 == priceChange24));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, symbol, image, currentPrice, priceChange24);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CryptoModelCopyWith<_$_CryptoModel> get copyWith =>
      __$$_CryptoModelCopyWithImpl<_$_CryptoModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CryptoModelToJson(
      this,
    );
  }
}

abstract class _CryptoModel implements CryptoModel {
  const factory _CryptoModel(
      {@JsonKey(name: 'id')
          required final String id,
      @JsonKey(name: 'name')
          required final String name,
      @JsonKey(name: 'symbol')
          required final String symbol,
      @JsonKey(name: 'image')
          required final String image,
      @JsonKey(name: 'current_price')
          required final num currentPrice,
      @JsonKey(name: 'price_change_24h')
          required final num priceChange24}) = _$_CryptoModel;

  factory _CryptoModel.fromJson(Map<String, dynamic> json) =
      _$_CryptoModel.fromJson;

  @override
  @JsonKey(name: 'id')
  String get id;
  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'symbol')
  String get symbol;
  @override
  @JsonKey(name: 'image')
  String get image;
  @override
  @JsonKey(name: 'current_price')
  num get currentPrice;
  @override
  @JsonKey(name: 'price_change_24h')
  num get priceChange24;
  @override
  @JsonKey(ignore: true)
  _$$_CryptoModelCopyWith<_$_CryptoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

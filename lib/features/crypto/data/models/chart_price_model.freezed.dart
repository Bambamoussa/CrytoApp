// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'chart_price_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ChartPriceModel _$ChartPriceModelFromJson(Map<String, dynamic> json) {
  return _ChartPriceModel.fromJson(json);
}

/// @nodoc
mixin _$ChartPriceModel {
  @JsonKey(name: 'prices')
  List<dynamic> get prices => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChartPriceModelCopyWith<ChartPriceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChartPriceModelCopyWith<$Res> {
  factory $ChartPriceModelCopyWith(
          ChartPriceModel value, $Res Function(ChartPriceModel) then) =
      _$ChartPriceModelCopyWithImpl<$Res, ChartPriceModel>;
  @useResult
  $Res call({@JsonKey(name: 'prices') List<dynamic> prices});
}

/// @nodoc
class _$ChartPriceModelCopyWithImpl<$Res, $Val extends ChartPriceModel>
    implements $ChartPriceModelCopyWith<$Res> {
  _$ChartPriceModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prices = null,
  }) {
    return _then(_value.copyWith(
      prices: null == prices
          ? _value.prices
          : prices // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ChartPriceModelCopyWith<$Res>
    implements $ChartPriceModelCopyWith<$Res> {
  factory _$$_ChartPriceModelCopyWith(
          _$_ChartPriceModel value, $Res Function(_$_ChartPriceModel) then) =
      __$$_ChartPriceModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'prices') List<dynamic> prices});
}

/// @nodoc
class __$$_ChartPriceModelCopyWithImpl<$Res>
    extends _$ChartPriceModelCopyWithImpl<$Res, _$_ChartPriceModel>
    implements _$$_ChartPriceModelCopyWith<$Res> {
  __$$_ChartPriceModelCopyWithImpl(
      _$_ChartPriceModel _value, $Res Function(_$_ChartPriceModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prices = null,
  }) {
    return _then(_$_ChartPriceModel(
      prices: null == prices
          ? _value._prices
          : prices // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ChartPriceModel implements _ChartPriceModel {
  const _$_ChartPriceModel(
      {@JsonKey(name: 'prices') required final List<dynamic> prices})
      : _prices = prices;

  factory _$_ChartPriceModel.fromJson(Map<String, dynamic> json) =>
      _$$_ChartPriceModelFromJson(json);

  final List<dynamic> _prices;
  @override
  @JsonKey(name: 'prices')
  List<dynamic> get prices {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_prices);
  }

  @override
  String toString() {
    return 'ChartPriceModel(prices: $prices)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChartPriceModel &&
            const DeepCollectionEquality().equals(other._prices, _prices));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_prices));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChartPriceModelCopyWith<_$_ChartPriceModel> get copyWith =>
      __$$_ChartPriceModelCopyWithImpl<_$_ChartPriceModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChartPriceModelToJson(
      this,
    );
  }
}

abstract class _ChartPriceModel implements ChartPriceModel {
  const factory _ChartPriceModel(
          {@JsonKey(name: 'prices') required final List<dynamic> prices}) =
      _$_ChartPriceModel;

  factory _ChartPriceModel.fromJson(Map<String, dynamic> json) =
      _$_ChartPriceModel.fromJson;

  @override
  @JsonKey(name: 'prices')
  List<dynamic> get prices;
  @override
  @JsonKey(ignore: true)
  _$$_ChartPriceModelCopyWith<_$_ChartPriceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'source_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SourceEntity {
  String get name => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SourceEntityCopyWith<SourceEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SourceEntityCopyWith<$Res> {
  factory $SourceEntityCopyWith(
          SourceEntity value, $Res Function(SourceEntity) then) =
      _$SourceEntityCopyWithImpl<$Res, SourceEntity>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class _$SourceEntityCopyWithImpl<$Res, $Val extends SourceEntity>
    implements $SourceEntityCopyWith<$Res> {
  _$SourceEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SourceEntityCopyWith<$Res>
    implements $SourceEntityCopyWith<$Res> {
  factory _$$_SourceEntityCopyWith(
          _$_SourceEntity value, $Res Function(_$_SourceEntity) then) =
      __$$_SourceEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$_SourceEntityCopyWithImpl<$Res>
    extends _$SourceEntityCopyWithImpl<$Res, _$_SourceEntity>
    implements _$$_SourceEntityCopyWith<$Res> {
  __$$_SourceEntityCopyWithImpl(
      _$_SourceEntity _value, $Res Function(_$_SourceEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$_SourceEntity(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SourceEntity implements _SourceEntity {
  const _$_SourceEntity({required this.name});

  @override
  final String name;

  @override
  String toString() {
    return 'SourceEntity(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SourceEntity &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SourceEntityCopyWith<_$_SourceEntity> get copyWith =>
      __$$_SourceEntityCopyWithImpl<_$_SourceEntity>(this, _$identity);
}

abstract class _SourceEntity implements SourceEntity {
  const factory _SourceEntity({required final String name}) = _$_SourceEntity;

  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_SourceEntityCopyWith<_$_SourceEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

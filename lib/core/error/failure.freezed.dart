// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Failure {
  String? get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) badRequest,
    required TResult Function(String? message) unauthorized,
    required TResult Function(String? message) timeout,
    required TResult Function(String? message) offline,
    required TResult Function(String? message) notFound,
    required TResult Function(String? message) cache,
    required TResult Function(String? message) server,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? badRequest,
    TResult? Function(String? message)? unauthorized,
    TResult? Function(String? message)? timeout,
    TResult? Function(String? message)? offline,
    TResult? Function(String? message)? notFound,
    TResult? Function(String? message)? cache,
    TResult? Function(String? message)? server,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? badRequest,
    TResult Function(String? message)? unauthorized,
    TResult Function(String? message)? timeout,
    TResult Function(String? message)? offline,
    TResult Function(String? message)? notFound,
    TResult Function(String? message)? cache,
    TResult Function(String? message)? server,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FailureBadRequest value) badRequest,
    required TResult Function(FailureUnauthorized value) unauthorized,
    required TResult Function(FailureTimeout value) timeout,
    required TResult Function(FailureOffline value) offline,
    required TResult Function(FailureNotFound value) notFound,
    required TResult Function(FailureCache value) cache,
    required TResult Function(FailureServer value) server,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FailureBadRequest value)? badRequest,
    TResult? Function(FailureUnauthorized value)? unauthorized,
    TResult? Function(FailureTimeout value)? timeout,
    TResult? Function(FailureOffline value)? offline,
    TResult? Function(FailureNotFound value)? notFound,
    TResult? Function(FailureCache value)? cache,
    TResult? Function(FailureServer value)? server,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FailureBadRequest value)? badRequest,
    TResult Function(FailureUnauthorized value)? unauthorized,
    TResult Function(FailureTimeout value)? timeout,
    TResult Function(FailureOffline value)? offline,
    TResult Function(FailureNotFound value)? notFound,
    TResult Function(FailureCache value)? cache,
    TResult Function(FailureServer value)? server,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FailureCopyWith<Failure> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailureCopyWith<$Res> {
  factory $FailureCopyWith(Failure value, $Res Function(Failure) then) =
      _$FailureCopyWithImpl<$Res, Failure>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class _$FailureCopyWithImpl<$Res, $Val extends Failure>
    implements $FailureCopyWith<$Res> {
  _$FailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FailureBadRequestCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$FailureBadRequestCopyWith(
          _$FailureBadRequest value, $Res Function(_$FailureBadRequest) then) =
      __$$FailureBadRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$FailureBadRequestCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$FailureBadRequest>
    implements _$$FailureBadRequestCopyWith<$Res> {
  __$$FailureBadRequestCopyWithImpl(
      _$FailureBadRequest _value, $Res Function(_$FailureBadRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$FailureBadRequest(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$FailureBadRequest extends FailureBadRequest {
  const _$FailureBadRequest({this.message}) : super._();

  @override
  final String? message;

  @override
  String toString() {
    return 'Failure.badRequest(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureBadRequest &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureBadRequestCopyWith<_$FailureBadRequest> get copyWith =>
      __$$FailureBadRequestCopyWithImpl<_$FailureBadRequest>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) badRequest,
    required TResult Function(String? message) unauthorized,
    required TResult Function(String? message) timeout,
    required TResult Function(String? message) offline,
    required TResult Function(String? message) notFound,
    required TResult Function(String? message) cache,
    required TResult Function(String? message) server,
  }) {
    return badRequest(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? badRequest,
    TResult? Function(String? message)? unauthorized,
    TResult? Function(String? message)? timeout,
    TResult? Function(String? message)? offline,
    TResult? Function(String? message)? notFound,
    TResult? Function(String? message)? cache,
    TResult? Function(String? message)? server,
  }) {
    return badRequest?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? badRequest,
    TResult Function(String? message)? unauthorized,
    TResult Function(String? message)? timeout,
    TResult Function(String? message)? offline,
    TResult Function(String? message)? notFound,
    TResult Function(String? message)? cache,
    TResult Function(String? message)? server,
    required TResult orElse(),
  }) {
    if (badRequest != null) {
      return badRequest(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FailureBadRequest value) badRequest,
    required TResult Function(FailureUnauthorized value) unauthorized,
    required TResult Function(FailureTimeout value) timeout,
    required TResult Function(FailureOffline value) offline,
    required TResult Function(FailureNotFound value) notFound,
    required TResult Function(FailureCache value) cache,
    required TResult Function(FailureServer value) server,
  }) {
    return badRequest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FailureBadRequest value)? badRequest,
    TResult? Function(FailureUnauthorized value)? unauthorized,
    TResult? Function(FailureTimeout value)? timeout,
    TResult? Function(FailureOffline value)? offline,
    TResult? Function(FailureNotFound value)? notFound,
    TResult? Function(FailureCache value)? cache,
    TResult? Function(FailureServer value)? server,
  }) {
    return badRequest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FailureBadRequest value)? badRequest,
    TResult Function(FailureUnauthorized value)? unauthorized,
    TResult Function(FailureTimeout value)? timeout,
    TResult Function(FailureOffline value)? offline,
    TResult Function(FailureNotFound value)? notFound,
    TResult Function(FailureCache value)? cache,
    TResult Function(FailureServer value)? server,
    required TResult orElse(),
  }) {
    if (badRequest != null) {
      return badRequest(this);
    }
    return orElse();
  }
}

abstract class FailureBadRequest extends Failure {
  const factory FailureBadRequest({final String? message}) =
      _$FailureBadRequest;
  const FailureBadRequest._() : super._();

  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$FailureBadRequestCopyWith<_$FailureBadRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailureUnauthorizedCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$FailureUnauthorizedCopyWith(_$FailureUnauthorized value,
          $Res Function(_$FailureUnauthorized) then) =
      __$$FailureUnauthorizedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$FailureUnauthorizedCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$FailureUnauthorized>
    implements _$$FailureUnauthorizedCopyWith<$Res> {
  __$$FailureUnauthorizedCopyWithImpl(
      _$FailureUnauthorized _value, $Res Function(_$FailureUnauthorized) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$FailureUnauthorized(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$FailureUnauthorized extends FailureUnauthorized {
  const _$FailureUnauthorized({this.message}) : super._();

  @override
  final String? message;

  @override
  String toString() {
    return 'Failure.unauthorized(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureUnauthorized &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureUnauthorizedCopyWith<_$FailureUnauthorized> get copyWith =>
      __$$FailureUnauthorizedCopyWithImpl<_$FailureUnauthorized>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) badRequest,
    required TResult Function(String? message) unauthorized,
    required TResult Function(String? message) timeout,
    required TResult Function(String? message) offline,
    required TResult Function(String? message) notFound,
    required TResult Function(String? message) cache,
    required TResult Function(String? message) server,
  }) {
    return unauthorized(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? badRequest,
    TResult? Function(String? message)? unauthorized,
    TResult? Function(String? message)? timeout,
    TResult? Function(String? message)? offline,
    TResult? Function(String? message)? notFound,
    TResult? Function(String? message)? cache,
    TResult? Function(String? message)? server,
  }) {
    return unauthorized?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? badRequest,
    TResult Function(String? message)? unauthorized,
    TResult Function(String? message)? timeout,
    TResult Function(String? message)? offline,
    TResult Function(String? message)? notFound,
    TResult Function(String? message)? cache,
    TResult Function(String? message)? server,
    required TResult orElse(),
  }) {
    if (unauthorized != null) {
      return unauthorized(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FailureBadRequest value) badRequest,
    required TResult Function(FailureUnauthorized value) unauthorized,
    required TResult Function(FailureTimeout value) timeout,
    required TResult Function(FailureOffline value) offline,
    required TResult Function(FailureNotFound value) notFound,
    required TResult Function(FailureCache value) cache,
    required TResult Function(FailureServer value) server,
  }) {
    return unauthorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FailureBadRequest value)? badRequest,
    TResult? Function(FailureUnauthorized value)? unauthorized,
    TResult? Function(FailureTimeout value)? timeout,
    TResult? Function(FailureOffline value)? offline,
    TResult? Function(FailureNotFound value)? notFound,
    TResult? Function(FailureCache value)? cache,
    TResult? Function(FailureServer value)? server,
  }) {
    return unauthorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FailureBadRequest value)? badRequest,
    TResult Function(FailureUnauthorized value)? unauthorized,
    TResult Function(FailureTimeout value)? timeout,
    TResult Function(FailureOffline value)? offline,
    TResult Function(FailureNotFound value)? notFound,
    TResult Function(FailureCache value)? cache,
    TResult Function(FailureServer value)? server,
    required TResult orElse(),
  }) {
    if (unauthorized != null) {
      return unauthorized(this);
    }
    return orElse();
  }
}

abstract class FailureUnauthorized extends Failure {
  const factory FailureUnauthorized({final String? message}) =
      _$FailureUnauthorized;
  const FailureUnauthorized._() : super._();

  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$FailureUnauthorizedCopyWith<_$FailureUnauthorized> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailureTimeoutCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$FailureTimeoutCopyWith(
          _$FailureTimeout value, $Res Function(_$FailureTimeout) then) =
      __$$FailureTimeoutCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$FailureTimeoutCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$FailureTimeout>
    implements _$$FailureTimeoutCopyWith<$Res> {
  __$$FailureTimeoutCopyWithImpl(
      _$FailureTimeout _value, $Res Function(_$FailureTimeout) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$FailureTimeout(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$FailureTimeout extends FailureTimeout {
  const _$FailureTimeout({this.message}) : super._();

  @override
  final String? message;

  @override
  String toString() {
    return 'Failure.timeout(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureTimeout &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureTimeoutCopyWith<_$FailureTimeout> get copyWith =>
      __$$FailureTimeoutCopyWithImpl<_$FailureTimeout>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) badRequest,
    required TResult Function(String? message) unauthorized,
    required TResult Function(String? message) timeout,
    required TResult Function(String? message) offline,
    required TResult Function(String? message) notFound,
    required TResult Function(String? message) cache,
    required TResult Function(String? message) server,
  }) {
    return timeout(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? badRequest,
    TResult? Function(String? message)? unauthorized,
    TResult? Function(String? message)? timeout,
    TResult? Function(String? message)? offline,
    TResult? Function(String? message)? notFound,
    TResult? Function(String? message)? cache,
    TResult? Function(String? message)? server,
  }) {
    return timeout?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? badRequest,
    TResult Function(String? message)? unauthorized,
    TResult Function(String? message)? timeout,
    TResult Function(String? message)? offline,
    TResult Function(String? message)? notFound,
    TResult Function(String? message)? cache,
    TResult Function(String? message)? server,
    required TResult orElse(),
  }) {
    if (timeout != null) {
      return timeout(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FailureBadRequest value) badRequest,
    required TResult Function(FailureUnauthorized value) unauthorized,
    required TResult Function(FailureTimeout value) timeout,
    required TResult Function(FailureOffline value) offline,
    required TResult Function(FailureNotFound value) notFound,
    required TResult Function(FailureCache value) cache,
    required TResult Function(FailureServer value) server,
  }) {
    return timeout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FailureBadRequest value)? badRequest,
    TResult? Function(FailureUnauthorized value)? unauthorized,
    TResult? Function(FailureTimeout value)? timeout,
    TResult? Function(FailureOffline value)? offline,
    TResult? Function(FailureNotFound value)? notFound,
    TResult? Function(FailureCache value)? cache,
    TResult? Function(FailureServer value)? server,
  }) {
    return timeout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FailureBadRequest value)? badRequest,
    TResult Function(FailureUnauthorized value)? unauthorized,
    TResult Function(FailureTimeout value)? timeout,
    TResult Function(FailureOffline value)? offline,
    TResult Function(FailureNotFound value)? notFound,
    TResult Function(FailureCache value)? cache,
    TResult Function(FailureServer value)? server,
    required TResult orElse(),
  }) {
    if (timeout != null) {
      return timeout(this);
    }
    return orElse();
  }
}

abstract class FailureTimeout extends Failure {
  const factory FailureTimeout({final String? message}) = _$FailureTimeout;
  const FailureTimeout._() : super._();

  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$FailureTimeoutCopyWith<_$FailureTimeout> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailureOfflineCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$FailureOfflineCopyWith(
          _$FailureOffline value, $Res Function(_$FailureOffline) then) =
      __$$FailureOfflineCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$FailureOfflineCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$FailureOffline>
    implements _$$FailureOfflineCopyWith<$Res> {
  __$$FailureOfflineCopyWithImpl(
      _$FailureOffline _value, $Res Function(_$FailureOffline) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$FailureOffline(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$FailureOffline extends FailureOffline {
  const _$FailureOffline({this.message}) : super._();

  @override
  final String? message;

  @override
  String toString() {
    return 'Failure.offline(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureOffline &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureOfflineCopyWith<_$FailureOffline> get copyWith =>
      __$$FailureOfflineCopyWithImpl<_$FailureOffline>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) badRequest,
    required TResult Function(String? message) unauthorized,
    required TResult Function(String? message) timeout,
    required TResult Function(String? message) offline,
    required TResult Function(String? message) notFound,
    required TResult Function(String? message) cache,
    required TResult Function(String? message) server,
  }) {
    return offline(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? badRequest,
    TResult? Function(String? message)? unauthorized,
    TResult? Function(String? message)? timeout,
    TResult? Function(String? message)? offline,
    TResult? Function(String? message)? notFound,
    TResult? Function(String? message)? cache,
    TResult? Function(String? message)? server,
  }) {
    return offline?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? badRequest,
    TResult Function(String? message)? unauthorized,
    TResult Function(String? message)? timeout,
    TResult Function(String? message)? offline,
    TResult Function(String? message)? notFound,
    TResult Function(String? message)? cache,
    TResult Function(String? message)? server,
    required TResult orElse(),
  }) {
    if (offline != null) {
      return offline(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FailureBadRequest value) badRequest,
    required TResult Function(FailureUnauthorized value) unauthorized,
    required TResult Function(FailureTimeout value) timeout,
    required TResult Function(FailureOffline value) offline,
    required TResult Function(FailureNotFound value) notFound,
    required TResult Function(FailureCache value) cache,
    required TResult Function(FailureServer value) server,
  }) {
    return offline(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FailureBadRequest value)? badRequest,
    TResult? Function(FailureUnauthorized value)? unauthorized,
    TResult? Function(FailureTimeout value)? timeout,
    TResult? Function(FailureOffline value)? offline,
    TResult? Function(FailureNotFound value)? notFound,
    TResult? Function(FailureCache value)? cache,
    TResult? Function(FailureServer value)? server,
  }) {
    return offline?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FailureBadRequest value)? badRequest,
    TResult Function(FailureUnauthorized value)? unauthorized,
    TResult Function(FailureTimeout value)? timeout,
    TResult Function(FailureOffline value)? offline,
    TResult Function(FailureNotFound value)? notFound,
    TResult Function(FailureCache value)? cache,
    TResult Function(FailureServer value)? server,
    required TResult orElse(),
  }) {
    if (offline != null) {
      return offline(this);
    }
    return orElse();
  }
}

abstract class FailureOffline extends Failure {
  const factory FailureOffline({final String? message}) = _$FailureOffline;
  const FailureOffline._() : super._();

  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$FailureOfflineCopyWith<_$FailureOffline> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailureNotFoundCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$FailureNotFoundCopyWith(
          _$FailureNotFound value, $Res Function(_$FailureNotFound) then) =
      __$$FailureNotFoundCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$FailureNotFoundCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$FailureNotFound>
    implements _$$FailureNotFoundCopyWith<$Res> {
  __$$FailureNotFoundCopyWithImpl(
      _$FailureNotFound _value, $Res Function(_$FailureNotFound) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$FailureNotFound(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$FailureNotFound extends FailureNotFound {
  const _$FailureNotFound({this.message}) : super._();

  @override
  final String? message;

  @override
  String toString() {
    return 'Failure.notFound(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureNotFound &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureNotFoundCopyWith<_$FailureNotFound> get copyWith =>
      __$$FailureNotFoundCopyWithImpl<_$FailureNotFound>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) badRequest,
    required TResult Function(String? message) unauthorized,
    required TResult Function(String? message) timeout,
    required TResult Function(String? message) offline,
    required TResult Function(String? message) notFound,
    required TResult Function(String? message) cache,
    required TResult Function(String? message) server,
  }) {
    return notFound(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? badRequest,
    TResult? Function(String? message)? unauthorized,
    TResult? Function(String? message)? timeout,
    TResult? Function(String? message)? offline,
    TResult? Function(String? message)? notFound,
    TResult? Function(String? message)? cache,
    TResult? Function(String? message)? server,
  }) {
    return notFound?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? badRequest,
    TResult Function(String? message)? unauthorized,
    TResult Function(String? message)? timeout,
    TResult Function(String? message)? offline,
    TResult Function(String? message)? notFound,
    TResult Function(String? message)? cache,
    TResult Function(String? message)? server,
    required TResult orElse(),
  }) {
    if (notFound != null) {
      return notFound(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FailureBadRequest value) badRequest,
    required TResult Function(FailureUnauthorized value) unauthorized,
    required TResult Function(FailureTimeout value) timeout,
    required TResult Function(FailureOffline value) offline,
    required TResult Function(FailureNotFound value) notFound,
    required TResult Function(FailureCache value) cache,
    required TResult Function(FailureServer value) server,
  }) {
    return notFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FailureBadRequest value)? badRequest,
    TResult? Function(FailureUnauthorized value)? unauthorized,
    TResult? Function(FailureTimeout value)? timeout,
    TResult? Function(FailureOffline value)? offline,
    TResult? Function(FailureNotFound value)? notFound,
    TResult? Function(FailureCache value)? cache,
    TResult? Function(FailureServer value)? server,
  }) {
    return notFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FailureBadRequest value)? badRequest,
    TResult Function(FailureUnauthorized value)? unauthorized,
    TResult Function(FailureTimeout value)? timeout,
    TResult Function(FailureOffline value)? offline,
    TResult Function(FailureNotFound value)? notFound,
    TResult Function(FailureCache value)? cache,
    TResult Function(FailureServer value)? server,
    required TResult orElse(),
  }) {
    if (notFound != null) {
      return notFound(this);
    }
    return orElse();
  }
}

abstract class FailureNotFound extends Failure {
  const factory FailureNotFound({final String? message}) = _$FailureNotFound;
  const FailureNotFound._() : super._();

  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$FailureNotFoundCopyWith<_$FailureNotFound> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailureCacheCopyWith<$Res> implements $FailureCopyWith<$Res> {
  factory _$$FailureCacheCopyWith(
          _$FailureCache value, $Res Function(_$FailureCache) then) =
      __$$FailureCacheCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$FailureCacheCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$FailureCache>
    implements _$$FailureCacheCopyWith<$Res> {
  __$$FailureCacheCopyWithImpl(
      _$FailureCache _value, $Res Function(_$FailureCache) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$FailureCache(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$FailureCache extends FailureCache {
  const _$FailureCache({this.message}) : super._();

  @override
  final String? message;

  @override
  String toString() {
    return 'Failure.cache(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureCache &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureCacheCopyWith<_$FailureCache> get copyWith =>
      __$$FailureCacheCopyWithImpl<_$FailureCache>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) badRequest,
    required TResult Function(String? message) unauthorized,
    required TResult Function(String? message) timeout,
    required TResult Function(String? message) offline,
    required TResult Function(String? message) notFound,
    required TResult Function(String? message) cache,
    required TResult Function(String? message) server,
  }) {
    return cache(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? badRequest,
    TResult? Function(String? message)? unauthorized,
    TResult? Function(String? message)? timeout,
    TResult? Function(String? message)? offline,
    TResult? Function(String? message)? notFound,
    TResult? Function(String? message)? cache,
    TResult? Function(String? message)? server,
  }) {
    return cache?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? badRequest,
    TResult Function(String? message)? unauthorized,
    TResult Function(String? message)? timeout,
    TResult Function(String? message)? offline,
    TResult Function(String? message)? notFound,
    TResult Function(String? message)? cache,
    TResult Function(String? message)? server,
    required TResult orElse(),
  }) {
    if (cache != null) {
      return cache(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FailureBadRequest value) badRequest,
    required TResult Function(FailureUnauthorized value) unauthorized,
    required TResult Function(FailureTimeout value) timeout,
    required TResult Function(FailureOffline value) offline,
    required TResult Function(FailureNotFound value) notFound,
    required TResult Function(FailureCache value) cache,
    required TResult Function(FailureServer value) server,
  }) {
    return cache(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FailureBadRequest value)? badRequest,
    TResult? Function(FailureUnauthorized value)? unauthorized,
    TResult? Function(FailureTimeout value)? timeout,
    TResult? Function(FailureOffline value)? offline,
    TResult? Function(FailureNotFound value)? notFound,
    TResult? Function(FailureCache value)? cache,
    TResult? Function(FailureServer value)? server,
  }) {
    return cache?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FailureBadRequest value)? badRequest,
    TResult Function(FailureUnauthorized value)? unauthorized,
    TResult Function(FailureTimeout value)? timeout,
    TResult Function(FailureOffline value)? offline,
    TResult Function(FailureNotFound value)? notFound,
    TResult Function(FailureCache value)? cache,
    TResult Function(FailureServer value)? server,
    required TResult orElse(),
  }) {
    if (cache != null) {
      return cache(this);
    }
    return orElse();
  }
}

abstract class FailureCache extends Failure {
  const factory FailureCache({final String? message}) = _$FailureCache;
  const FailureCache._() : super._();

  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$FailureCacheCopyWith<_$FailureCache> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailureServerCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$FailureServerCopyWith(
          _$FailureServer value, $Res Function(_$FailureServer) then) =
      __$$FailureServerCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$FailureServerCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$FailureServer>
    implements _$$FailureServerCopyWith<$Res> {
  __$$FailureServerCopyWithImpl(
      _$FailureServer _value, $Res Function(_$FailureServer) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$FailureServer(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$FailureServer extends FailureServer {
  const _$FailureServer({this.message}) : super._();

  @override
  final String? message;

  @override
  String toString() {
    return 'Failure.server(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureServer &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureServerCopyWith<_$FailureServer> get copyWith =>
      __$$FailureServerCopyWithImpl<_$FailureServer>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) badRequest,
    required TResult Function(String? message) unauthorized,
    required TResult Function(String? message) timeout,
    required TResult Function(String? message) offline,
    required TResult Function(String? message) notFound,
    required TResult Function(String? message) cache,
    required TResult Function(String? message) server,
  }) {
    return server(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? badRequest,
    TResult? Function(String? message)? unauthorized,
    TResult? Function(String? message)? timeout,
    TResult? Function(String? message)? offline,
    TResult? Function(String? message)? notFound,
    TResult? Function(String? message)? cache,
    TResult? Function(String? message)? server,
  }) {
    return server?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? badRequest,
    TResult Function(String? message)? unauthorized,
    TResult Function(String? message)? timeout,
    TResult Function(String? message)? offline,
    TResult Function(String? message)? notFound,
    TResult Function(String? message)? cache,
    TResult Function(String? message)? server,
    required TResult orElse(),
  }) {
    if (server != null) {
      return server(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FailureBadRequest value) badRequest,
    required TResult Function(FailureUnauthorized value) unauthorized,
    required TResult Function(FailureTimeout value) timeout,
    required TResult Function(FailureOffline value) offline,
    required TResult Function(FailureNotFound value) notFound,
    required TResult Function(FailureCache value) cache,
    required TResult Function(FailureServer value) server,
  }) {
    return server(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FailureBadRequest value)? badRequest,
    TResult? Function(FailureUnauthorized value)? unauthorized,
    TResult? Function(FailureTimeout value)? timeout,
    TResult? Function(FailureOffline value)? offline,
    TResult? Function(FailureNotFound value)? notFound,
    TResult? Function(FailureCache value)? cache,
    TResult? Function(FailureServer value)? server,
  }) {
    return server?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FailureBadRequest value)? badRequest,
    TResult Function(FailureUnauthorized value)? unauthorized,
    TResult Function(FailureTimeout value)? timeout,
    TResult Function(FailureOffline value)? offline,
    TResult Function(FailureNotFound value)? notFound,
    TResult Function(FailureCache value)? cache,
    TResult Function(FailureServer value)? server,
    required TResult orElse(),
  }) {
    if (server != null) {
      return server(this);
    }
    return orElse();
  }
}

abstract class FailureServer extends Failure {
  const factory FailureServer({final String? message}) = _$FailureServer;
  const FailureServer._() : super._();

  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$FailureServerCopyWith<_$FailureServer> get copyWith =>
      throw _privateConstructorUsedError;
}

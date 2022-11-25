import 'package:cryptomonnaie/core/error/failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'result.freezed.dart';

@freezed
class Result<T> with _$Result<T> {
  const factory Result.success(T data) = _Success;

  const factory Result.failure(Failure failure) = _Failure;
}
import 'dart:developer';

import 'package:cryptomonnaie/core/error/exception.dart';
import 'package:cryptomonnaie/core/error/failure.dart';
import 'package:dio/dio.dart';

abstract class BaseRepository {
  Failure dispatchException(Exception? exception) {
    log('$exception');
    if (exception is Exception) {
      switch (exception.runtimeType) {
        case TimeoutException:
          return const Failure.timeout();
        case BadRequestException:
          return const Failure.server();
        case CacheException:
          return const Failure.server();
      }
    }
    return const Failure.server();
  }

  Failure dispatchError(Object? error) {
    log('$error');
    if (error is DioError) {
      switch (error.type) {
        case DioErrorType.connectTimeout:
          return Failure.offline(message: error.message);
        case DioErrorType.sendTimeout:
          return Failure.timeout(message: error.message);
        case DioErrorType.receiveTimeout:
          return Failure.timeout(message: error.message);
        case DioErrorType.response:
          return Failure.server(message: error.message);
        case DioErrorType.cancel:
          return Failure.server(message: error.message);
        case DioErrorType.other:
          return Failure.server(message: error.message);
      }
    }
    return const Failure.server();
  }
}

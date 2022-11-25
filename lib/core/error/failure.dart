import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../constants/app_icons.dart';

part 'failure.freezed.dart';

@freezed
class Failure with _$Failure {
  const factory Failure.badRequest({String? message}) = FailureBadRequest;

  const factory Failure.unauthorized({String? message}) = FailureUnauthorized;

  const factory Failure.timeout({String? message}) = FailureTimeout;

  const factory Failure.offline({String? message}) = FailureOffline;

  const factory Failure.notFound({String? message}) = FailureNotFound;

  const factory Failure.cache({String? message}) = FailureCache;

  const factory Failure.server({String? message}) = FailureServer;

  const Failure._();

  String get appIconsFailure {
    if (this is FailureOffline || this is FailureTimeout) {
      return AppIcons.noInternet;
    } else if (this is FailureServer) {
      return AppIcons.maintenance;
    } else {
      return AppIcons.problem;
    }
  }

  String? errorMessageWidget(BuildContext context) {
    if (this is FailureOffline || this is FailureTimeout) {
      return "pas de connexion";
    } else if (this is FailureServer) {
      return "application en maintenance";
    }
    return null;
  }
}

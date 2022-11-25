import 'package:freezed_annotation/freezed_annotation.dart';

part 'source_entity.freezed.dart';

@freezed
class SourceEntity with _$SourceEntity {
  const factory SourceEntity({
    required String name,
  }) = _SourceEntity;
}


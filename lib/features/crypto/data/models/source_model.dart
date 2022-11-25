import 'package:cryptomonnaie/features/crypto/domain/entities/source_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'source_model.freezed.dart';
part 'source_model.g.dart';

@freezed
class SourceModel with _$SourceModel {
  const factory SourceModel({
    @JsonKey(name: 'name') String? name,
  }) = _SourceModel;

  factory SourceModel.fromJson(Map<String, dynamic> json) => _$SourceModelFromJson(json);
}

extension SourceModelX on SourceModel {
  SourceEntity toDomain() => SourceEntity(name: name ?? '');
}

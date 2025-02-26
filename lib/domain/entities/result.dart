import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend/domain/entities/user_entity.dart';

part 'result.freezed.dart';
part 'result.g.dart';

@freezed
class Result with _$Result {
  const factory Result({
    required UserEntity user,
    required String token,
  }) = _Result;

  factory Result.fromJson(Map<String, Object?> json) => _$ResultFromJson(json);
}

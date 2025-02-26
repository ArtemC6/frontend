import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_entity.freezed.dart';
part 'user_entity.g.dart';

@freezed
class UserEntity with _$UserEntity {
  const factory UserEntity({
    @JsonKey(name: 'user_id') int? id,
    required String name,
    @JsonKey(name: 'phone_number') String? phone,
    @JsonKey(name: 'country_iso') String? countryIso,
    required int age,
    @JsonKey(name: 'looking_for') String? lookingFor,
  }) = _UserEntity;

  factory UserEntity.fromJson(Map<String, Object?> json) =>
      _$UserEntityFromJson(json);
}

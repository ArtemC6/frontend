import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend/domain/entities/user_entity.dart';
import 'package:frontend/domain/resources/message_owner_enum.dart';
import 'package:frontend/domain/resources/message_status_enum.dart';

part 'message_entity.freezed.dart';
part 'message_entity.g.dart';

@freezed
class MessageEntity with _$MessageEntity {
  const factory MessageEntity({
    @JsonKey(includeIfNull: false) MessageOwner? owner,
    @JsonKey(includeIfNull: false) MessageStatus? status,
    UserEntity? sender,
    @JsonKey(name: 'sender_id') int? senderId,
    required String message,
    @JsonKey(name: 'phone_number') String? phoneNumber,
    DateTime? timestamp,
  }) = _MessageEntity;

  factory MessageEntity.fromJson(Map<String, Object?> json) =>
      _$MessageEntityFromJson(json);

  // @override
  // Map<String, Object?> toJson() => _$MessageEntityToJson(this);
}

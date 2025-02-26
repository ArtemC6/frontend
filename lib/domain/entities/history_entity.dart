import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend/domain/entities/receiver_entity.dart';

part 'history_entity.g.dart';
part 'history_entity.freezed.dart';

@freezed
class HistoryEntity with _$HistoryEntity {
  const factory HistoryEntity({
    @JsonKey(name: 'room_name') required String roomName,
    required ReceiverEntity receiver,
    @JsonKey(name: 'last_message') required String lastMessage,
    @JsonKey(name: 'last_timestamp') required DateTime lastTimestamp,
  }) = _HistoryEntity;

  factory HistoryEntity.fromJson(Map<String, Object?> json) =>
      _$HistoryEntityFromJson(json);
}

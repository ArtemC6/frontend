import 'package:freezed_annotation/freezed_annotation.dart';

part 'receiver_entity.g.dart';
part 'receiver_entity.freezed.dart';

@freezed
class ReceiverEntity with _$ReceiverEntity {
  const factory ReceiverEntity({
    required int id,
    required String name,
  }) = _ReceiverEntity;

  factory ReceiverEntity.fromJson(Map<String, Object?> json) =>
      _$ReceiverEntityFromJson(json);
}

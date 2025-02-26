// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'history_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HistoryEntityImpl _$$HistoryEntityImplFromJson(Map<String, dynamic> json) =>
    _$HistoryEntityImpl(
      roomName: json['room_name'] as String,
      receiver:
          ReceiverEntity.fromJson(json['receiver'] as Map<String, dynamic>),
      lastMessage: json['last_message'] as String,
      lastTimestamp: DateTime.parse(json['last_timestamp'] as String),
    );

Map<String, dynamic> _$$HistoryEntityImplToJson(_$HistoryEntityImpl instance) =>
    <String, dynamic>{
      'room_name': instance.roomName,
      'receiver': instance.receiver,
      'last_message': instance.lastMessage,
      'last_timestamp': instance.lastTimestamp.toIso8601String(),
    };

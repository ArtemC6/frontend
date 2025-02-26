// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MessageEntityImpl _$$MessageEntityImplFromJson(Map<String, dynamic> json) =>
    _$MessageEntityImpl(
      owner: $enumDecodeNullable(_$MessageOwnerEnumMap, json['owner']),
      status: $enumDecodeNullable(_$MessageStatusEnumMap, json['status']),
      sender: json['sender'] == null
          ? null
          : UserEntity.fromJson(json['sender'] as Map<String, dynamic>),
      senderId: (json['sender_id'] as num?)?.toInt(),
      message: json['message'] as String,
      phoneNumber: json['phone_number'] as String?,
      timestamp: json['timestamp'] == null
          ? null
          : DateTime.parse(json['timestamp'] as String),
    );

Map<String, dynamic> _$$MessageEntityImplToJson(_$MessageEntityImpl instance) =>
    <String, dynamic>{
      if (_$MessageOwnerEnumMap[instance.owner] case final value?)
        'owner': value,
      if (_$MessageStatusEnumMap[instance.status] case final value?)
        'status': value,
      'sender': instance.sender,
      'sender_id': instance.senderId,
      'message': instance.message,
      'phone_number': instance.phoneNumber,
      'timestamp': instance.timestamp?.toIso8601String(),
    };

const _$MessageOwnerEnumMap = {
  MessageOwner.me: 'me',
  MessageOwner.other: 'other',
};

const _$MessageStatusEnumMap = {
  MessageStatus.inProgress: 'inProgress',
  MessageStatus.delivered: 'delivered',
};

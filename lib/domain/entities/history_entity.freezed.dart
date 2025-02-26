// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'history_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

HistoryEntity _$HistoryEntityFromJson(Map<String, dynamic> json) {
  return _HistoryEntity.fromJson(json);
}

/// @nodoc
mixin _$HistoryEntity {
  @JsonKey(name: 'room_name')
  String get roomName => throw _privateConstructorUsedError;
  ReceiverEntity get receiver => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_message')
  String get lastMessage => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_timestamp')
  DateTime get lastTimestamp => throw _privateConstructorUsedError;

  /// Serializes this HistoryEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HistoryEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HistoryEntityCopyWith<HistoryEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HistoryEntityCopyWith<$Res> {
  factory $HistoryEntityCopyWith(
          HistoryEntity value, $Res Function(HistoryEntity) then) =
      _$HistoryEntityCopyWithImpl<$Res, HistoryEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'room_name') String roomName,
      ReceiverEntity receiver,
      @JsonKey(name: 'last_message') String lastMessage,
      @JsonKey(name: 'last_timestamp') DateTime lastTimestamp});

  $ReceiverEntityCopyWith<$Res> get receiver;
}

/// @nodoc
class _$HistoryEntityCopyWithImpl<$Res, $Val extends HistoryEntity>
    implements $HistoryEntityCopyWith<$Res> {
  _$HistoryEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HistoryEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? roomName = null,
    Object? receiver = null,
    Object? lastMessage = null,
    Object? lastTimestamp = null,
  }) {
    return _then(_value.copyWith(
      roomName: null == roomName
          ? _value.roomName
          : roomName // ignore: cast_nullable_to_non_nullable
              as String,
      receiver: null == receiver
          ? _value.receiver
          : receiver // ignore: cast_nullable_to_non_nullable
              as ReceiverEntity,
      lastMessage: null == lastMessage
          ? _value.lastMessage
          : lastMessage // ignore: cast_nullable_to_non_nullable
              as String,
      lastTimestamp: null == lastTimestamp
          ? _value.lastTimestamp
          : lastTimestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }

  /// Create a copy of HistoryEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ReceiverEntityCopyWith<$Res> get receiver {
    return $ReceiverEntityCopyWith<$Res>(_value.receiver, (value) {
      return _then(_value.copyWith(receiver: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HistoryEntityImplCopyWith<$Res>
    implements $HistoryEntityCopyWith<$Res> {
  factory _$$HistoryEntityImplCopyWith(
          _$HistoryEntityImpl value, $Res Function(_$HistoryEntityImpl) then) =
      __$$HistoryEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'room_name') String roomName,
      ReceiverEntity receiver,
      @JsonKey(name: 'last_message') String lastMessage,
      @JsonKey(name: 'last_timestamp') DateTime lastTimestamp});

  @override
  $ReceiverEntityCopyWith<$Res> get receiver;
}

/// @nodoc
class __$$HistoryEntityImplCopyWithImpl<$Res>
    extends _$HistoryEntityCopyWithImpl<$Res, _$HistoryEntityImpl>
    implements _$$HistoryEntityImplCopyWith<$Res> {
  __$$HistoryEntityImplCopyWithImpl(
      _$HistoryEntityImpl _value, $Res Function(_$HistoryEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of HistoryEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? roomName = null,
    Object? receiver = null,
    Object? lastMessage = null,
    Object? lastTimestamp = null,
  }) {
    return _then(_$HistoryEntityImpl(
      roomName: null == roomName
          ? _value.roomName
          : roomName // ignore: cast_nullable_to_non_nullable
              as String,
      receiver: null == receiver
          ? _value.receiver
          : receiver // ignore: cast_nullable_to_non_nullable
              as ReceiverEntity,
      lastMessage: null == lastMessage
          ? _value.lastMessage
          : lastMessage // ignore: cast_nullable_to_non_nullable
              as String,
      lastTimestamp: null == lastTimestamp
          ? _value.lastTimestamp
          : lastTimestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HistoryEntityImpl implements _HistoryEntity {
  const _$HistoryEntityImpl(
      {@JsonKey(name: 'room_name') required this.roomName,
      required this.receiver,
      @JsonKey(name: 'last_message') required this.lastMessage,
      @JsonKey(name: 'last_timestamp') required this.lastTimestamp});

  factory _$HistoryEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$HistoryEntityImplFromJson(json);

  @override
  @JsonKey(name: 'room_name')
  final String roomName;
  @override
  final ReceiverEntity receiver;
  @override
  @JsonKey(name: 'last_message')
  final String lastMessage;
  @override
  @JsonKey(name: 'last_timestamp')
  final DateTime lastTimestamp;

  @override
  String toString() {
    return 'HistoryEntity(roomName: $roomName, receiver: $receiver, lastMessage: $lastMessage, lastTimestamp: $lastTimestamp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HistoryEntityImpl &&
            (identical(other.roomName, roomName) ||
                other.roomName == roomName) &&
            (identical(other.receiver, receiver) ||
                other.receiver == receiver) &&
            (identical(other.lastMessage, lastMessage) ||
                other.lastMessage == lastMessage) &&
            (identical(other.lastTimestamp, lastTimestamp) ||
                other.lastTimestamp == lastTimestamp));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, roomName, receiver, lastMessage, lastTimestamp);

  /// Create a copy of HistoryEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HistoryEntityImplCopyWith<_$HistoryEntityImpl> get copyWith =>
      __$$HistoryEntityImplCopyWithImpl<_$HistoryEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HistoryEntityImplToJson(
      this,
    );
  }
}

abstract class _HistoryEntity implements HistoryEntity {
  const factory _HistoryEntity(
      {@JsonKey(name: 'room_name') required final String roomName,
      required final ReceiverEntity receiver,
      @JsonKey(name: 'last_message') required final String lastMessage,
      @JsonKey(name: 'last_timestamp')
      required final DateTime lastTimestamp}) = _$HistoryEntityImpl;

  factory _HistoryEntity.fromJson(Map<String, dynamic> json) =
      _$HistoryEntityImpl.fromJson;

  @override
  @JsonKey(name: 'room_name')
  String get roomName;
  @override
  ReceiverEntity get receiver;
  @override
  @JsonKey(name: 'last_message')
  String get lastMessage;
  @override
  @JsonKey(name: 'last_timestamp')
  DateTime get lastTimestamp;

  /// Create a copy of HistoryEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HistoryEntityImplCopyWith<_$HistoryEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

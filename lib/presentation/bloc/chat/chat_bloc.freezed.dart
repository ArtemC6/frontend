// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ChatEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? room, bool? chatIsExist) initialize,
    required TResult Function() connect,
    required TResult Function(String message) addMessage,
    required TResult Function(MessageEntity message) messageReceived,
    required TResult Function() disconnect,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? room, bool? chatIsExist)? initialize,
    TResult? Function()? connect,
    TResult? Function(String message)? addMessage,
    TResult? Function(MessageEntity message)? messageReceived,
    TResult? Function()? disconnect,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? room, bool? chatIsExist)? initialize,
    TResult Function()? connect,
    TResult Function(String message)? addMessage,
    TResult Function(MessageEntity message)? messageReceived,
    TResult Function()? disconnect,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_Connect value) connect,
    required TResult Function(_AddMessage value) addMessage,
    required TResult Function(_MessageReceived value) messageReceived,
    required TResult Function(_Disconnect value) disconnect,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_Connect value)? connect,
    TResult? Function(_AddMessage value)? addMessage,
    TResult? Function(_MessageReceived value)? messageReceived,
    TResult? Function(_Disconnect value)? disconnect,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_Connect value)? connect,
    TResult Function(_AddMessage value)? addMessage,
    TResult Function(_MessageReceived value)? messageReceived,
    TResult Function(_Disconnect value)? disconnect,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatEventCopyWith<$Res> {
  factory $ChatEventCopyWith(ChatEvent value, $Res Function(ChatEvent) then) =
      _$ChatEventCopyWithImpl<$Res, ChatEvent>;
}

/// @nodoc
class _$ChatEventCopyWithImpl<$Res, $Val extends ChatEvent>
    implements $ChatEventCopyWith<$Res> {
  _$ChatEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitializeImplCopyWith<$Res> {
  factory _$$InitializeImplCopyWith(
          _$InitializeImpl value, $Res Function(_$InitializeImpl) then) =
      __$$InitializeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? room, bool? chatIsExist});
}

/// @nodoc
class __$$InitializeImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$InitializeImpl>
    implements _$$InitializeImplCopyWith<$Res> {
  __$$InitializeImplCopyWithImpl(
      _$InitializeImpl _value, $Res Function(_$InitializeImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? room = freezed,
    Object? chatIsExist = freezed,
  }) {
    return _then(_$InitializeImpl(
      room: freezed == room
          ? _value.room
          : room // ignore: cast_nullable_to_non_nullable
              as String?,
      chatIsExist: freezed == chatIsExist
          ? _value.chatIsExist
          : chatIsExist // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$InitializeImpl implements _Initialize {
  const _$InitializeImpl({required this.room, required this.chatIsExist});

  @override
  final String? room;
  @override
  final bool? chatIsExist;

  @override
  String toString() {
    return 'ChatEvent.initialize(room: $room, chatIsExist: $chatIsExist)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitializeImpl &&
            (identical(other.room, room) || other.room == room) &&
            (identical(other.chatIsExist, chatIsExist) ||
                other.chatIsExist == chatIsExist));
  }

  @override
  int get hashCode => Object.hash(runtimeType, room, chatIsExist);

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitializeImplCopyWith<_$InitializeImpl> get copyWith =>
      __$$InitializeImplCopyWithImpl<_$InitializeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? room, bool? chatIsExist) initialize,
    required TResult Function() connect,
    required TResult Function(String message) addMessage,
    required TResult Function(MessageEntity message) messageReceived,
    required TResult Function() disconnect,
  }) {
    return initialize(room, chatIsExist);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? room, bool? chatIsExist)? initialize,
    TResult? Function()? connect,
    TResult? Function(String message)? addMessage,
    TResult? Function(MessageEntity message)? messageReceived,
    TResult? Function()? disconnect,
  }) {
    return initialize?.call(room, chatIsExist);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? room, bool? chatIsExist)? initialize,
    TResult Function()? connect,
    TResult Function(String message)? addMessage,
    TResult Function(MessageEntity message)? messageReceived,
    TResult Function()? disconnect,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize(room, chatIsExist);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_Connect value) connect,
    required TResult Function(_AddMessage value) addMessage,
    required TResult Function(_MessageReceived value) messageReceived,
    required TResult Function(_Disconnect value) disconnect,
  }) {
    return initialize(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_Connect value)? connect,
    TResult? Function(_AddMessage value)? addMessage,
    TResult? Function(_MessageReceived value)? messageReceived,
    TResult? Function(_Disconnect value)? disconnect,
  }) {
    return initialize?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_Connect value)? connect,
    TResult Function(_AddMessage value)? addMessage,
    TResult Function(_MessageReceived value)? messageReceived,
    TResult Function(_Disconnect value)? disconnect,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize(this);
    }
    return orElse();
  }
}

abstract class _Initialize implements ChatEvent {
  const factory _Initialize(
      {required final String? room,
      required final bool? chatIsExist}) = _$InitializeImpl;

  String? get room;
  bool? get chatIsExist;

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitializeImplCopyWith<_$InitializeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ConnectImplCopyWith<$Res> {
  factory _$$ConnectImplCopyWith(
          _$ConnectImpl value, $Res Function(_$ConnectImpl) then) =
      __$$ConnectImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ConnectImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$ConnectImpl>
    implements _$$ConnectImplCopyWith<$Res> {
  __$$ConnectImplCopyWithImpl(
      _$ConnectImpl _value, $Res Function(_$ConnectImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ConnectImpl implements _Connect {
  const _$ConnectImpl();

  @override
  String toString() {
    return 'ChatEvent.connect()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ConnectImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? room, bool? chatIsExist) initialize,
    required TResult Function() connect,
    required TResult Function(String message) addMessage,
    required TResult Function(MessageEntity message) messageReceived,
    required TResult Function() disconnect,
  }) {
    return connect();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? room, bool? chatIsExist)? initialize,
    TResult? Function()? connect,
    TResult? Function(String message)? addMessage,
    TResult? Function(MessageEntity message)? messageReceived,
    TResult? Function()? disconnect,
  }) {
    return connect?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? room, bool? chatIsExist)? initialize,
    TResult Function()? connect,
    TResult Function(String message)? addMessage,
    TResult Function(MessageEntity message)? messageReceived,
    TResult Function()? disconnect,
    required TResult orElse(),
  }) {
    if (connect != null) {
      return connect();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_Connect value) connect,
    required TResult Function(_AddMessage value) addMessage,
    required TResult Function(_MessageReceived value) messageReceived,
    required TResult Function(_Disconnect value) disconnect,
  }) {
    return connect(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_Connect value)? connect,
    TResult? Function(_AddMessage value)? addMessage,
    TResult? Function(_MessageReceived value)? messageReceived,
    TResult? Function(_Disconnect value)? disconnect,
  }) {
    return connect?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_Connect value)? connect,
    TResult Function(_AddMessage value)? addMessage,
    TResult Function(_MessageReceived value)? messageReceived,
    TResult Function(_Disconnect value)? disconnect,
    required TResult orElse(),
  }) {
    if (connect != null) {
      return connect(this);
    }
    return orElse();
  }
}

abstract class _Connect implements ChatEvent {
  const factory _Connect() = _$ConnectImpl;
}

/// @nodoc
abstract class _$$AddMessageImplCopyWith<$Res> {
  factory _$$AddMessageImplCopyWith(
          _$AddMessageImpl value, $Res Function(_$AddMessageImpl) then) =
      __$$AddMessageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$AddMessageImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$AddMessageImpl>
    implements _$$AddMessageImplCopyWith<$Res> {
  __$$AddMessageImplCopyWithImpl(
      _$AddMessageImpl _value, $Res Function(_$AddMessageImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$AddMessageImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddMessageImpl implements _AddMessage {
  const _$AddMessageImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'ChatEvent.addMessage(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddMessageImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddMessageImplCopyWith<_$AddMessageImpl> get copyWith =>
      __$$AddMessageImplCopyWithImpl<_$AddMessageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? room, bool? chatIsExist) initialize,
    required TResult Function() connect,
    required TResult Function(String message) addMessage,
    required TResult Function(MessageEntity message) messageReceived,
    required TResult Function() disconnect,
  }) {
    return addMessage(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? room, bool? chatIsExist)? initialize,
    TResult? Function()? connect,
    TResult? Function(String message)? addMessage,
    TResult? Function(MessageEntity message)? messageReceived,
    TResult? Function()? disconnect,
  }) {
    return addMessage?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? room, bool? chatIsExist)? initialize,
    TResult Function()? connect,
    TResult Function(String message)? addMessage,
    TResult Function(MessageEntity message)? messageReceived,
    TResult Function()? disconnect,
    required TResult orElse(),
  }) {
    if (addMessage != null) {
      return addMessage(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_Connect value) connect,
    required TResult Function(_AddMessage value) addMessage,
    required TResult Function(_MessageReceived value) messageReceived,
    required TResult Function(_Disconnect value) disconnect,
  }) {
    return addMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_Connect value)? connect,
    TResult? Function(_AddMessage value)? addMessage,
    TResult? Function(_MessageReceived value)? messageReceived,
    TResult? Function(_Disconnect value)? disconnect,
  }) {
    return addMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_Connect value)? connect,
    TResult Function(_AddMessage value)? addMessage,
    TResult Function(_MessageReceived value)? messageReceived,
    TResult Function(_Disconnect value)? disconnect,
    required TResult orElse(),
  }) {
    if (addMessage != null) {
      return addMessage(this);
    }
    return orElse();
  }
}

abstract class _AddMessage implements ChatEvent {
  const factory _AddMessage({required final String message}) = _$AddMessageImpl;

  String get message;

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddMessageImplCopyWith<_$AddMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MessageReceivedImplCopyWith<$Res> {
  factory _$$MessageReceivedImplCopyWith(_$MessageReceivedImpl value,
          $Res Function(_$MessageReceivedImpl) then) =
      __$$MessageReceivedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({MessageEntity message});

  $MessageEntityCopyWith<$Res> get message;
}

/// @nodoc
class __$$MessageReceivedImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$MessageReceivedImpl>
    implements _$$MessageReceivedImplCopyWith<$Res> {
  __$$MessageReceivedImplCopyWithImpl(
      _$MessageReceivedImpl _value, $Res Function(_$MessageReceivedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$MessageReceivedImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as MessageEntity,
    ));
  }

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MessageEntityCopyWith<$Res> get message {
    return $MessageEntityCopyWith<$Res>(_value.message, (value) {
      return _then(_value.copyWith(message: value));
    });
  }
}

/// @nodoc

class _$MessageReceivedImpl implements _MessageReceived {
  const _$MessageReceivedImpl({required this.message});

  @override
  final MessageEntity message;

  @override
  String toString() {
    return 'ChatEvent.messageReceived(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageReceivedImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageReceivedImplCopyWith<_$MessageReceivedImpl> get copyWith =>
      __$$MessageReceivedImplCopyWithImpl<_$MessageReceivedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? room, bool? chatIsExist) initialize,
    required TResult Function() connect,
    required TResult Function(String message) addMessage,
    required TResult Function(MessageEntity message) messageReceived,
    required TResult Function() disconnect,
  }) {
    return messageReceived(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? room, bool? chatIsExist)? initialize,
    TResult? Function()? connect,
    TResult? Function(String message)? addMessage,
    TResult? Function(MessageEntity message)? messageReceived,
    TResult? Function()? disconnect,
  }) {
    return messageReceived?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? room, bool? chatIsExist)? initialize,
    TResult Function()? connect,
    TResult Function(String message)? addMessage,
    TResult Function(MessageEntity message)? messageReceived,
    TResult Function()? disconnect,
    required TResult orElse(),
  }) {
    if (messageReceived != null) {
      return messageReceived(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_Connect value) connect,
    required TResult Function(_AddMessage value) addMessage,
    required TResult Function(_MessageReceived value) messageReceived,
    required TResult Function(_Disconnect value) disconnect,
  }) {
    return messageReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_Connect value)? connect,
    TResult? Function(_AddMessage value)? addMessage,
    TResult? Function(_MessageReceived value)? messageReceived,
    TResult? Function(_Disconnect value)? disconnect,
  }) {
    return messageReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_Connect value)? connect,
    TResult Function(_AddMessage value)? addMessage,
    TResult Function(_MessageReceived value)? messageReceived,
    TResult Function(_Disconnect value)? disconnect,
    required TResult orElse(),
  }) {
    if (messageReceived != null) {
      return messageReceived(this);
    }
    return orElse();
  }
}

abstract class _MessageReceived implements ChatEvent {
  const factory _MessageReceived({required final MessageEntity message}) =
      _$MessageReceivedImpl;

  MessageEntity get message;

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MessageReceivedImplCopyWith<_$MessageReceivedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DisconnectImplCopyWith<$Res> {
  factory _$$DisconnectImplCopyWith(
          _$DisconnectImpl value, $Res Function(_$DisconnectImpl) then) =
      __$$DisconnectImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DisconnectImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$DisconnectImpl>
    implements _$$DisconnectImplCopyWith<$Res> {
  __$$DisconnectImplCopyWithImpl(
      _$DisconnectImpl _value, $Res Function(_$DisconnectImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$DisconnectImpl implements _Disconnect {
  const _$DisconnectImpl();

  @override
  String toString() {
    return 'ChatEvent.disconnect()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DisconnectImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? room, bool? chatIsExist) initialize,
    required TResult Function() connect,
    required TResult Function(String message) addMessage,
    required TResult Function(MessageEntity message) messageReceived,
    required TResult Function() disconnect,
  }) {
    return disconnect();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? room, bool? chatIsExist)? initialize,
    TResult? Function()? connect,
    TResult? Function(String message)? addMessage,
    TResult? Function(MessageEntity message)? messageReceived,
    TResult? Function()? disconnect,
  }) {
    return disconnect?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? room, bool? chatIsExist)? initialize,
    TResult Function()? connect,
    TResult Function(String message)? addMessage,
    TResult Function(MessageEntity message)? messageReceived,
    TResult Function()? disconnect,
    required TResult orElse(),
  }) {
    if (disconnect != null) {
      return disconnect();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_Connect value) connect,
    required TResult Function(_AddMessage value) addMessage,
    required TResult Function(_MessageReceived value) messageReceived,
    required TResult Function(_Disconnect value) disconnect,
  }) {
    return disconnect(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_Connect value)? connect,
    TResult? Function(_AddMessage value)? addMessage,
    TResult? Function(_MessageReceived value)? messageReceived,
    TResult? Function(_Disconnect value)? disconnect,
  }) {
    return disconnect?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_Connect value)? connect,
    TResult Function(_AddMessage value)? addMessage,
    TResult Function(_MessageReceived value)? messageReceived,
    TResult Function(_Disconnect value)? disconnect,
    required TResult orElse(),
  }) {
    if (disconnect != null) {
      return disconnect(this);
    }
    return orElse();
  }
}

abstract class _Disconnect implements ChatEvent {
  const factory _Disconnect() = _$DisconnectImpl;
}

/// @nodoc
mixin _$ChatState {
  List<MessageEntity>? get messages => throw _privateConstructorUsedError;
  HistoryEntity? get history => throw _privateConstructorUsedError;
  ReceiverEntity? get receiver => throw _privateConstructorUsedError;
  bool? get displayName => throw _privateConstructorUsedError;
  BaseStatus get status => throw _privateConstructorUsedError;
  Exception? get error => throw _privateConstructorUsedError;

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChatStateCopyWith<ChatState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatStateCopyWith<$Res> {
  factory $ChatStateCopyWith(ChatState value, $Res Function(ChatState) then) =
      _$ChatStateCopyWithImpl<$Res, ChatState>;
  @useResult
  $Res call(
      {List<MessageEntity>? messages,
      HistoryEntity? history,
      ReceiverEntity? receiver,
      bool? displayName,
      BaseStatus status,
      Exception? error});

  $HistoryEntityCopyWith<$Res>? get history;
  $ReceiverEntityCopyWith<$Res>? get receiver;
}

/// @nodoc
class _$ChatStateCopyWithImpl<$Res, $Val extends ChatState>
    implements $ChatStateCopyWith<$Res> {
  _$ChatStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messages = freezed,
    Object? history = freezed,
    Object? receiver = freezed,
    Object? displayName = freezed,
    Object? status = null,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      messages: freezed == messages
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<MessageEntity>?,
      history: freezed == history
          ? _value.history
          : history // ignore: cast_nullable_to_non_nullable
              as HistoryEntity?,
      receiver: freezed == receiver
          ? _value.receiver
          : receiver // ignore: cast_nullable_to_non_nullable
              as ReceiverEntity?,
      displayName: freezed == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as bool?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BaseStatus,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Exception?,
    ) as $Val);
  }

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $HistoryEntityCopyWith<$Res>? get history {
    if (_value.history == null) {
      return null;
    }

    return $HistoryEntityCopyWith<$Res>(_value.history!, (value) {
      return _then(_value.copyWith(history: value) as $Val);
    });
  }

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ReceiverEntityCopyWith<$Res>? get receiver {
    if (_value.receiver == null) {
      return null;
    }

    return $ReceiverEntityCopyWith<$Res>(_value.receiver!, (value) {
      return _then(_value.copyWith(receiver: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ChatStateImplCopyWith<$Res>
    implements $ChatStateCopyWith<$Res> {
  factory _$$ChatStateImplCopyWith(
          _$ChatStateImpl value, $Res Function(_$ChatStateImpl) then) =
      __$$ChatStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<MessageEntity>? messages,
      HistoryEntity? history,
      ReceiverEntity? receiver,
      bool? displayName,
      BaseStatus status,
      Exception? error});

  @override
  $HistoryEntityCopyWith<$Res>? get history;
  @override
  $ReceiverEntityCopyWith<$Res>? get receiver;
}

/// @nodoc
class __$$ChatStateImplCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$ChatStateImpl>
    implements _$$ChatStateImplCopyWith<$Res> {
  __$$ChatStateImplCopyWithImpl(
      _$ChatStateImpl _value, $Res Function(_$ChatStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messages = freezed,
    Object? history = freezed,
    Object? receiver = freezed,
    Object? displayName = freezed,
    Object? status = null,
    Object? error = freezed,
  }) {
    return _then(_$ChatStateImpl(
      messages: freezed == messages
          ? _value._messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<MessageEntity>?,
      history: freezed == history
          ? _value.history
          : history // ignore: cast_nullable_to_non_nullable
              as HistoryEntity?,
      receiver: freezed == receiver
          ? _value.receiver
          : receiver // ignore: cast_nullable_to_non_nullable
              as ReceiverEntity?,
      displayName: freezed == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as bool?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BaseStatus,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Exception?,
    ));
  }
}

/// @nodoc

class _$ChatStateImpl implements _ChatState {
  const _$ChatStateImpl(
      {final List<MessageEntity>? messages = const [],
      this.history,
      this.receiver,
      this.displayName = false,
      this.status = BaseStatus.initial,
      this.error})
      : _messages = messages;

  final List<MessageEntity>? _messages;
  @override
  @JsonKey()
  List<MessageEntity>? get messages {
    final value = _messages;
    if (value == null) return null;
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final HistoryEntity? history;
  @override
  final ReceiverEntity? receiver;
  @override
  @JsonKey()
  final bool? displayName;
  @override
  @JsonKey()
  final BaseStatus status;
  @override
  final Exception? error;

  @override
  String toString() {
    return 'ChatState(messages: $messages, history: $history, receiver: $receiver, displayName: $displayName, status: $status, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatStateImpl &&
            const DeepCollectionEquality().equals(other._messages, _messages) &&
            (identical(other.history, history) || other.history == history) &&
            (identical(other.receiver, receiver) ||
                other.receiver == receiver) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_messages),
      history,
      receiver,
      displayName,
      status,
      error);

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatStateImplCopyWith<_$ChatStateImpl> get copyWith =>
      __$$ChatStateImplCopyWithImpl<_$ChatStateImpl>(this, _$identity);
}

abstract class _ChatState implements ChatState {
  const factory _ChatState(
      {final List<MessageEntity>? messages,
      final HistoryEntity? history,
      final ReceiverEntity? receiver,
      final bool? displayName,
      final BaseStatus status,
      final Exception? error}) = _$ChatStateImpl;

  @override
  List<MessageEntity>? get messages;
  @override
  HistoryEntity? get history;
  @override
  ReceiverEntity? get receiver;
  @override
  bool? get displayName;
  @override
  BaseStatus get status;
  @override
  Exception? get error;

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatStateImplCopyWith<_$ChatStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

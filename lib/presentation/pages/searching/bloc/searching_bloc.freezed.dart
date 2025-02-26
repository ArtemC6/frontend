// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'searching_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SearchingEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() checkSimilarities,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? checkSimilarities,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? checkSimilarities,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CheckSimilarities value) checkSimilarities,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CheckSimilarities value)? checkSimilarities,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CheckSimilarities value)? checkSimilarities,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchingEventCopyWith<$Res> {
  factory $SearchingEventCopyWith(
          SearchingEvent value, $Res Function(SearchingEvent) then) =
      _$SearchingEventCopyWithImpl<$Res, SearchingEvent>;
}

/// @nodoc
class _$SearchingEventCopyWithImpl<$Res, $Val extends SearchingEvent>
    implements $SearchingEventCopyWith<$Res> {
  _$SearchingEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SearchingEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$SearchingEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchingEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'SearchingEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() checkSimilarities,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? checkSimilarities,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? checkSimilarities,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CheckSimilarities value) checkSimilarities,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CheckSimilarities value)? checkSimilarities,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CheckSimilarities value)? checkSimilarities,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements SearchingEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$CheckSimilaritiesImplCopyWith<$Res> {
  factory _$$CheckSimilaritiesImplCopyWith(_$CheckSimilaritiesImpl value,
          $Res Function(_$CheckSimilaritiesImpl) then) =
      __$$CheckSimilaritiesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CheckSimilaritiesImplCopyWithImpl<$Res>
    extends _$SearchingEventCopyWithImpl<$Res, _$CheckSimilaritiesImpl>
    implements _$$CheckSimilaritiesImplCopyWith<$Res> {
  __$$CheckSimilaritiesImplCopyWithImpl(_$CheckSimilaritiesImpl _value,
      $Res Function(_$CheckSimilaritiesImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchingEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CheckSimilaritiesImpl implements _CheckSimilarities {
  const _$CheckSimilaritiesImpl();

  @override
  String toString() {
    return 'SearchingEvent.checkSimilarities()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CheckSimilaritiesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() checkSimilarities,
  }) {
    return checkSimilarities();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? checkSimilarities,
  }) {
    return checkSimilarities?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? checkSimilarities,
    required TResult orElse(),
  }) {
    if (checkSimilarities != null) {
      return checkSimilarities();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CheckSimilarities value) checkSimilarities,
  }) {
    return checkSimilarities(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CheckSimilarities value)? checkSimilarities,
  }) {
    return checkSimilarities?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CheckSimilarities value)? checkSimilarities,
    required TResult orElse(),
  }) {
    if (checkSimilarities != null) {
      return checkSimilarities(this);
    }
    return orElse();
  }
}

abstract class _CheckSimilarities implements SearchingEvent {
  const factory _CheckSimilarities() = _$CheckSimilaritiesImpl;
}

/// @nodoc
mixin _$SearchingState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() videoCall,
    required TResult Function() chatAlreadyExist,
    required TResult Function(String room) chat,
    required TResult Function() nothing,
    required TResult Function(Exception error) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? videoCall,
    TResult? Function()? chatAlreadyExist,
    TResult? Function(String room)? chat,
    TResult? Function()? nothing,
    TResult? Function(Exception error)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? videoCall,
    TResult Function()? chatAlreadyExist,
    TResult Function(String room)? chat,
    TResult Function()? nothing,
    TResult Function(Exception error)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_VideoCall value) videoCall,
    required TResult Function(_ChatAlreadyExist value) chatAlreadyExist,
    required TResult Function(_Chat value) chat,
    required TResult Function(_Nothing value) nothing,
    required TResult Function(_Failed value) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_VideoCall value)? videoCall,
    TResult? Function(_ChatAlreadyExist value)? chatAlreadyExist,
    TResult? Function(_Chat value)? chat,
    TResult? Function(_Nothing value)? nothing,
    TResult? Function(_Failed value)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_VideoCall value)? videoCall,
    TResult Function(_ChatAlreadyExist value)? chatAlreadyExist,
    TResult Function(_Chat value)? chat,
    TResult Function(_Nothing value)? nothing,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchingStateCopyWith<$Res> {
  factory $SearchingStateCopyWith(
          SearchingState value, $Res Function(SearchingState) then) =
      _$SearchingStateCopyWithImpl<$Res, SearchingState>;
}

/// @nodoc
class _$SearchingStateCopyWithImpl<$Res, $Val extends SearchingState>
    implements $SearchingStateCopyWith<$Res> {
  _$SearchingStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SearchingState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$SearchingStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchingState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'SearchingState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() videoCall,
    required TResult Function() chatAlreadyExist,
    required TResult Function(String room) chat,
    required TResult Function() nothing,
    required TResult Function(Exception error) failed,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? videoCall,
    TResult? Function()? chatAlreadyExist,
    TResult? Function(String room)? chat,
    TResult? Function()? nothing,
    TResult? Function(Exception error)? failed,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? videoCall,
    TResult Function()? chatAlreadyExist,
    TResult Function(String room)? chat,
    TResult Function()? nothing,
    TResult Function(Exception error)? failed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_VideoCall value) videoCall,
    required TResult Function(_ChatAlreadyExist value) chatAlreadyExist,
    required TResult Function(_Chat value) chat,
    required TResult Function(_Nothing value) nothing,
    required TResult Function(_Failed value) failed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_VideoCall value)? videoCall,
    TResult? Function(_ChatAlreadyExist value)? chatAlreadyExist,
    TResult? Function(_Chat value)? chat,
    TResult? Function(_Nothing value)? nothing,
    TResult? Function(_Failed value)? failed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_VideoCall value)? videoCall,
    TResult Function(_ChatAlreadyExist value)? chatAlreadyExist,
    TResult Function(_Chat value)? chat,
    TResult Function(_Nothing value)? nothing,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements SearchingState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$VideoCallImplCopyWith<$Res> {
  factory _$$VideoCallImplCopyWith(
          _$VideoCallImpl value, $Res Function(_$VideoCallImpl) then) =
      __$$VideoCallImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$VideoCallImplCopyWithImpl<$Res>
    extends _$SearchingStateCopyWithImpl<$Res, _$VideoCallImpl>
    implements _$$VideoCallImplCopyWith<$Res> {
  __$$VideoCallImplCopyWithImpl(
      _$VideoCallImpl _value, $Res Function(_$VideoCallImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchingState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$VideoCallImpl implements _VideoCall {
  const _$VideoCallImpl();

  @override
  String toString() {
    return 'SearchingState.videoCall()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$VideoCallImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() videoCall,
    required TResult Function() chatAlreadyExist,
    required TResult Function(String room) chat,
    required TResult Function() nothing,
    required TResult Function(Exception error) failed,
  }) {
    return videoCall();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? videoCall,
    TResult? Function()? chatAlreadyExist,
    TResult? Function(String room)? chat,
    TResult? Function()? nothing,
    TResult? Function(Exception error)? failed,
  }) {
    return videoCall?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? videoCall,
    TResult Function()? chatAlreadyExist,
    TResult Function(String room)? chat,
    TResult Function()? nothing,
    TResult Function(Exception error)? failed,
    required TResult orElse(),
  }) {
    if (videoCall != null) {
      return videoCall();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_VideoCall value) videoCall,
    required TResult Function(_ChatAlreadyExist value) chatAlreadyExist,
    required TResult Function(_Chat value) chat,
    required TResult Function(_Nothing value) nothing,
    required TResult Function(_Failed value) failed,
  }) {
    return videoCall(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_VideoCall value)? videoCall,
    TResult? Function(_ChatAlreadyExist value)? chatAlreadyExist,
    TResult? Function(_Chat value)? chat,
    TResult? Function(_Nothing value)? nothing,
    TResult? Function(_Failed value)? failed,
  }) {
    return videoCall?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_VideoCall value)? videoCall,
    TResult Function(_ChatAlreadyExist value)? chatAlreadyExist,
    TResult Function(_Chat value)? chat,
    TResult Function(_Nothing value)? nothing,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (videoCall != null) {
      return videoCall(this);
    }
    return orElse();
  }
}

abstract class _VideoCall implements SearchingState {
  const factory _VideoCall() = _$VideoCallImpl;
}

/// @nodoc
abstract class _$$ChatAlreadyExistImplCopyWith<$Res> {
  factory _$$ChatAlreadyExistImplCopyWith(_$ChatAlreadyExistImpl value,
          $Res Function(_$ChatAlreadyExistImpl) then) =
      __$$ChatAlreadyExistImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ChatAlreadyExistImplCopyWithImpl<$Res>
    extends _$SearchingStateCopyWithImpl<$Res, _$ChatAlreadyExistImpl>
    implements _$$ChatAlreadyExistImplCopyWith<$Res> {
  __$$ChatAlreadyExistImplCopyWithImpl(_$ChatAlreadyExistImpl _value,
      $Res Function(_$ChatAlreadyExistImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchingState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ChatAlreadyExistImpl implements _ChatAlreadyExist {
  const _$ChatAlreadyExistImpl();

  @override
  String toString() {
    return 'SearchingState.chatAlreadyExist()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ChatAlreadyExistImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() videoCall,
    required TResult Function() chatAlreadyExist,
    required TResult Function(String room) chat,
    required TResult Function() nothing,
    required TResult Function(Exception error) failed,
  }) {
    return chatAlreadyExist();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? videoCall,
    TResult? Function()? chatAlreadyExist,
    TResult? Function(String room)? chat,
    TResult? Function()? nothing,
    TResult? Function(Exception error)? failed,
  }) {
    return chatAlreadyExist?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? videoCall,
    TResult Function()? chatAlreadyExist,
    TResult Function(String room)? chat,
    TResult Function()? nothing,
    TResult Function(Exception error)? failed,
    required TResult orElse(),
  }) {
    if (chatAlreadyExist != null) {
      return chatAlreadyExist();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_VideoCall value) videoCall,
    required TResult Function(_ChatAlreadyExist value) chatAlreadyExist,
    required TResult Function(_Chat value) chat,
    required TResult Function(_Nothing value) nothing,
    required TResult Function(_Failed value) failed,
  }) {
    return chatAlreadyExist(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_VideoCall value)? videoCall,
    TResult? Function(_ChatAlreadyExist value)? chatAlreadyExist,
    TResult? Function(_Chat value)? chat,
    TResult? Function(_Nothing value)? nothing,
    TResult? Function(_Failed value)? failed,
  }) {
    return chatAlreadyExist?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_VideoCall value)? videoCall,
    TResult Function(_ChatAlreadyExist value)? chatAlreadyExist,
    TResult Function(_Chat value)? chat,
    TResult Function(_Nothing value)? nothing,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (chatAlreadyExist != null) {
      return chatAlreadyExist(this);
    }
    return orElse();
  }
}

abstract class _ChatAlreadyExist implements SearchingState {
  const factory _ChatAlreadyExist() = _$ChatAlreadyExistImpl;
}

/// @nodoc
abstract class _$$ChatImplCopyWith<$Res> {
  factory _$$ChatImplCopyWith(
          _$ChatImpl value, $Res Function(_$ChatImpl) then) =
      __$$ChatImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String room});
}

/// @nodoc
class __$$ChatImplCopyWithImpl<$Res>
    extends _$SearchingStateCopyWithImpl<$Res, _$ChatImpl>
    implements _$$ChatImplCopyWith<$Res> {
  __$$ChatImplCopyWithImpl(_$ChatImpl _value, $Res Function(_$ChatImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchingState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? room = null,
  }) {
    return _then(_$ChatImpl(
      room: null == room
          ? _value.room
          : room // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ChatImpl implements _Chat {
  const _$ChatImpl({required this.room});

  @override
  final String room;

  @override
  String toString() {
    return 'SearchingState.chat(room: $room)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatImpl &&
            (identical(other.room, room) || other.room == room));
  }

  @override
  int get hashCode => Object.hash(runtimeType, room);

  /// Create a copy of SearchingState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatImplCopyWith<_$ChatImpl> get copyWith =>
      __$$ChatImplCopyWithImpl<_$ChatImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() videoCall,
    required TResult Function() chatAlreadyExist,
    required TResult Function(String room) chat,
    required TResult Function() nothing,
    required TResult Function(Exception error) failed,
  }) {
    return chat(room);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? videoCall,
    TResult? Function()? chatAlreadyExist,
    TResult? Function(String room)? chat,
    TResult? Function()? nothing,
    TResult? Function(Exception error)? failed,
  }) {
    return chat?.call(room);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? videoCall,
    TResult Function()? chatAlreadyExist,
    TResult Function(String room)? chat,
    TResult Function()? nothing,
    TResult Function(Exception error)? failed,
    required TResult orElse(),
  }) {
    if (chat != null) {
      return chat(room);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_VideoCall value) videoCall,
    required TResult Function(_ChatAlreadyExist value) chatAlreadyExist,
    required TResult Function(_Chat value) chat,
    required TResult Function(_Nothing value) nothing,
    required TResult Function(_Failed value) failed,
  }) {
    return chat(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_VideoCall value)? videoCall,
    TResult? Function(_ChatAlreadyExist value)? chatAlreadyExist,
    TResult? Function(_Chat value)? chat,
    TResult? Function(_Nothing value)? nothing,
    TResult? Function(_Failed value)? failed,
  }) {
    return chat?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_VideoCall value)? videoCall,
    TResult Function(_ChatAlreadyExist value)? chatAlreadyExist,
    TResult Function(_Chat value)? chat,
    TResult Function(_Nothing value)? nothing,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (chat != null) {
      return chat(this);
    }
    return orElse();
  }
}

abstract class _Chat implements SearchingState {
  const factory _Chat({required final String room}) = _$ChatImpl;

  String get room;

  /// Create a copy of SearchingState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatImplCopyWith<_$ChatImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NothingImplCopyWith<$Res> {
  factory _$$NothingImplCopyWith(
          _$NothingImpl value, $Res Function(_$NothingImpl) then) =
      __$$NothingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NothingImplCopyWithImpl<$Res>
    extends _$SearchingStateCopyWithImpl<$Res, _$NothingImpl>
    implements _$$NothingImplCopyWith<$Res> {
  __$$NothingImplCopyWithImpl(
      _$NothingImpl _value, $Res Function(_$NothingImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchingState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$NothingImpl implements _Nothing {
  const _$NothingImpl();

  @override
  String toString() {
    return 'SearchingState.nothing()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NothingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() videoCall,
    required TResult Function() chatAlreadyExist,
    required TResult Function(String room) chat,
    required TResult Function() nothing,
    required TResult Function(Exception error) failed,
  }) {
    return nothing();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? videoCall,
    TResult? Function()? chatAlreadyExist,
    TResult? Function(String room)? chat,
    TResult? Function()? nothing,
    TResult? Function(Exception error)? failed,
  }) {
    return nothing?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? videoCall,
    TResult Function()? chatAlreadyExist,
    TResult Function(String room)? chat,
    TResult Function()? nothing,
    TResult Function(Exception error)? failed,
    required TResult orElse(),
  }) {
    if (nothing != null) {
      return nothing();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_VideoCall value) videoCall,
    required TResult Function(_ChatAlreadyExist value) chatAlreadyExist,
    required TResult Function(_Chat value) chat,
    required TResult Function(_Nothing value) nothing,
    required TResult Function(_Failed value) failed,
  }) {
    return nothing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_VideoCall value)? videoCall,
    TResult? Function(_ChatAlreadyExist value)? chatAlreadyExist,
    TResult? Function(_Chat value)? chat,
    TResult? Function(_Nothing value)? nothing,
    TResult? Function(_Failed value)? failed,
  }) {
    return nothing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_VideoCall value)? videoCall,
    TResult Function(_ChatAlreadyExist value)? chatAlreadyExist,
    TResult Function(_Chat value)? chat,
    TResult Function(_Nothing value)? nothing,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (nothing != null) {
      return nothing(this);
    }
    return orElse();
  }
}

abstract class _Nothing implements SearchingState {
  const factory _Nothing() = _$NothingImpl;
}

/// @nodoc
abstract class _$$FailedImplCopyWith<$Res> {
  factory _$$FailedImplCopyWith(
          _$FailedImpl value, $Res Function(_$FailedImpl) then) =
      __$$FailedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Exception error});
}

/// @nodoc
class __$$FailedImplCopyWithImpl<$Res>
    extends _$SearchingStateCopyWithImpl<$Res, _$FailedImpl>
    implements _$$FailedImplCopyWith<$Res> {
  __$$FailedImplCopyWithImpl(
      _$FailedImpl _value, $Res Function(_$FailedImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchingState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$FailedImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Exception,
    ));
  }
}

/// @nodoc

class _$FailedImpl implements _Failed {
  const _$FailedImpl({required this.error});

  @override
  final Exception error;

  @override
  String toString() {
    return 'SearchingState.failed(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailedImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of SearchingState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FailedImplCopyWith<_$FailedImpl> get copyWith =>
      __$$FailedImplCopyWithImpl<_$FailedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() videoCall,
    required TResult Function() chatAlreadyExist,
    required TResult Function(String room) chat,
    required TResult Function() nothing,
    required TResult Function(Exception error) failed,
  }) {
    return failed(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? videoCall,
    TResult? Function()? chatAlreadyExist,
    TResult? Function(String room)? chat,
    TResult? Function()? nothing,
    TResult? Function(Exception error)? failed,
  }) {
    return failed?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? videoCall,
    TResult Function()? chatAlreadyExist,
    TResult Function(String room)? chat,
    TResult Function()? nothing,
    TResult Function(Exception error)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_VideoCall value) videoCall,
    required TResult Function(_ChatAlreadyExist value) chatAlreadyExist,
    required TResult Function(_Chat value) chat,
    required TResult Function(_Nothing value) nothing,
    required TResult Function(_Failed value) failed,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_VideoCall value)? videoCall,
    TResult? Function(_ChatAlreadyExist value)? chatAlreadyExist,
    TResult? Function(_Chat value)? chat,
    TResult? Function(_Nothing value)? nothing,
    TResult? Function(_Failed value)? failed,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_VideoCall value)? videoCall,
    TResult Function(_ChatAlreadyExist value)? chatAlreadyExist,
    TResult Function(_Chat value)? chat,
    TResult Function(_Nothing value)? nothing,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class _Failed implements SearchingState {
  const factory _Failed({required final Exception error}) = _$FailedImpl;

  Exception get error;

  /// Create a copy of SearchingState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FailedImplCopyWith<_$FailedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

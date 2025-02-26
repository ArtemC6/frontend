// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username) enterUsername,
    required TResult Function(String code, String number) enterPhoneNumber,
    required TResult Function(String age) enterAge,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String username)? enterUsername,
    TResult? Function(String code, String number)? enterPhoneNumber,
    TResult? Function(String age)? enterAge,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username)? enterUsername,
    TResult Function(String code, String number)? enterPhoneNumber,
    TResult Function(String age)? enterAge,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EnterUsername value) enterUsername,
    required TResult Function(_EnterPhoneNumber value) enterPhoneNumber,
    required TResult Function(_EnterAge value) enterAge,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EnterUsername value)? enterUsername,
    TResult? Function(_EnterPhoneNumber value)? enterPhoneNumber,
    TResult? Function(_EnterAge value)? enterAge,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EnterUsername value)? enterUsername,
    TResult Function(_EnterPhoneNumber value)? enterPhoneNumber,
    TResult Function(_EnterAge value)? enterAge,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$EnterUsernameImplCopyWith<$Res> {
  factory _$$EnterUsernameImplCopyWith(
          _$EnterUsernameImpl value, $Res Function(_$EnterUsernameImpl) then) =
      __$$EnterUsernameImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String username});
}

/// @nodoc
class __$$EnterUsernameImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$EnterUsernameImpl>
    implements _$$EnterUsernameImplCopyWith<$Res> {
  __$$EnterUsernameImplCopyWithImpl(
      _$EnterUsernameImpl _value, $Res Function(_$EnterUsernameImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
  }) {
    return _then(_$EnterUsernameImpl(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EnterUsernameImpl implements _EnterUsername {
  const _$EnterUsernameImpl({required this.username});

  @override
  final String username;

  @override
  String toString() {
    return 'AuthEvent.enterUsername(username: $username)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EnterUsernameImpl &&
            (identical(other.username, username) ||
                other.username == username));
  }

  @override
  int get hashCode => Object.hash(runtimeType, username);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EnterUsernameImplCopyWith<_$EnterUsernameImpl> get copyWith =>
      __$$EnterUsernameImplCopyWithImpl<_$EnterUsernameImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username) enterUsername,
    required TResult Function(String code, String number) enterPhoneNumber,
    required TResult Function(String age) enterAge,
  }) {
    return enterUsername(username);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String username)? enterUsername,
    TResult? Function(String code, String number)? enterPhoneNumber,
    TResult? Function(String age)? enterAge,
  }) {
    return enterUsername?.call(username);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username)? enterUsername,
    TResult Function(String code, String number)? enterPhoneNumber,
    TResult Function(String age)? enterAge,
    required TResult orElse(),
  }) {
    if (enterUsername != null) {
      return enterUsername(username);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EnterUsername value) enterUsername,
    required TResult Function(_EnterPhoneNumber value) enterPhoneNumber,
    required TResult Function(_EnterAge value) enterAge,
  }) {
    return enterUsername(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EnterUsername value)? enterUsername,
    TResult? Function(_EnterPhoneNumber value)? enterPhoneNumber,
    TResult? Function(_EnterAge value)? enterAge,
  }) {
    return enterUsername?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EnterUsername value)? enterUsername,
    TResult Function(_EnterPhoneNumber value)? enterPhoneNumber,
    TResult Function(_EnterAge value)? enterAge,
    required TResult orElse(),
  }) {
    if (enterUsername != null) {
      return enterUsername(this);
    }
    return orElse();
  }
}

abstract class _EnterUsername implements AuthEvent {
  const factory _EnterUsername({required final String username}) =
      _$EnterUsernameImpl;

  String get username;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EnterUsernameImplCopyWith<_$EnterUsernameImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EnterPhoneNumberImplCopyWith<$Res> {
  factory _$$EnterPhoneNumberImplCopyWith(_$EnterPhoneNumberImpl value,
          $Res Function(_$EnterPhoneNumberImpl) then) =
      __$$EnterPhoneNumberImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String code, String number});
}

/// @nodoc
class __$$EnterPhoneNumberImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$EnterPhoneNumberImpl>
    implements _$$EnterPhoneNumberImplCopyWith<$Res> {
  __$$EnterPhoneNumberImplCopyWithImpl(_$EnterPhoneNumberImpl _value,
      $Res Function(_$EnterPhoneNumberImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? number = null,
  }) {
    return _then(_$EnterPhoneNumberImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EnterPhoneNumberImpl implements _EnterPhoneNumber {
  const _$EnterPhoneNumberImpl({required this.code, required this.number});

  @override
  final String code;
  @override
  final String number;

  @override
  String toString() {
    return 'AuthEvent.enterPhoneNumber(code: $code, number: $number)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EnterPhoneNumberImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.number, number) || other.number == number));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code, number);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EnterPhoneNumberImplCopyWith<_$EnterPhoneNumberImpl> get copyWith =>
      __$$EnterPhoneNumberImplCopyWithImpl<_$EnterPhoneNumberImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username) enterUsername,
    required TResult Function(String code, String number) enterPhoneNumber,
    required TResult Function(String age) enterAge,
  }) {
    return enterPhoneNumber(code, number);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String username)? enterUsername,
    TResult? Function(String code, String number)? enterPhoneNumber,
    TResult? Function(String age)? enterAge,
  }) {
    return enterPhoneNumber?.call(code, number);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username)? enterUsername,
    TResult Function(String code, String number)? enterPhoneNumber,
    TResult Function(String age)? enterAge,
    required TResult orElse(),
  }) {
    if (enterPhoneNumber != null) {
      return enterPhoneNumber(code, number);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EnterUsername value) enterUsername,
    required TResult Function(_EnterPhoneNumber value) enterPhoneNumber,
    required TResult Function(_EnterAge value) enterAge,
  }) {
    return enterPhoneNumber(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EnterUsername value)? enterUsername,
    TResult? Function(_EnterPhoneNumber value)? enterPhoneNumber,
    TResult? Function(_EnterAge value)? enterAge,
  }) {
    return enterPhoneNumber?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EnterUsername value)? enterUsername,
    TResult Function(_EnterPhoneNumber value)? enterPhoneNumber,
    TResult Function(_EnterAge value)? enterAge,
    required TResult orElse(),
  }) {
    if (enterPhoneNumber != null) {
      return enterPhoneNumber(this);
    }
    return orElse();
  }
}

abstract class _EnterPhoneNumber implements AuthEvent {
  const factory _EnterPhoneNumber(
      {required final String code,
      required final String number}) = _$EnterPhoneNumberImpl;

  String get code;
  String get number;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EnterPhoneNumberImplCopyWith<_$EnterPhoneNumberImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EnterAgeImplCopyWith<$Res> {
  factory _$$EnterAgeImplCopyWith(
          _$EnterAgeImpl value, $Res Function(_$EnterAgeImpl) then) =
      __$$EnterAgeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String age});
}

/// @nodoc
class __$$EnterAgeImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$EnterAgeImpl>
    implements _$$EnterAgeImplCopyWith<$Res> {
  __$$EnterAgeImplCopyWithImpl(
      _$EnterAgeImpl _value, $Res Function(_$EnterAgeImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? age = null,
  }) {
    return _then(_$EnterAgeImpl(
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EnterAgeImpl implements _EnterAge {
  const _$EnterAgeImpl({required this.age});

  @override
  final String age;

  @override
  String toString() {
    return 'AuthEvent.enterAge(age: $age)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EnterAgeImpl &&
            (identical(other.age, age) || other.age == age));
  }

  @override
  int get hashCode => Object.hash(runtimeType, age);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EnterAgeImplCopyWith<_$EnterAgeImpl> get copyWith =>
      __$$EnterAgeImplCopyWithImpl<_$EnterAgeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username) enterUsername,
    required TResult Function(String code, String number) enterPhoneNumber,
    required TResult Function(String age) enterAge,
  }) {
    return enterAge(age);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String username)? enterUsername,
    TResult? Function(String code, String number)? enterPhoneNumber,
    TResult? Function(String age)? enterAge,
  }) {
    return enterAge?.call(age);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username)? enterUsername,
    TResult Function(String code, String number)? enterPhoneNumber,
    TResult Function(String age)? enterAge,
    required TResult orElse(),
  }) {
    if (enterAge != null) {
      return enterAge(age);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EnterUsername value) enterUsername,
    required TResult Function(_EnterPhoneNumber value) enterPhoneNumber,
    required TResult Function(_EnterAge value) enterAge,
  }) {
    return enterAge(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EnterUsername value)? enterUsername,
    TResult? Function(_EnterPhoneNumber value)? enterPhoneNumber,
    TResult? Function(_EnterAge value)? enterAge,
  }) {
    return enterAge?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EnterUsername value)? enterUsername,
    TResult Function(_EnterPhoneNumber value)? enterPhoneNumber,
    TResult Function(_EnterAge value)? enterAge,
    required TResult orElse(),
  }) {
    if (enterAge != null) {
      return enterAge(this);
    }
    return orElse();
  }
}

abstract class _EnterAge implements AuthEvent {
  const factory _EnterAge({required final String age}) = _$EnterAgeImpl;

  String get age;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EnterAgeImplCopyWith<_$EnterAgeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AuthState {
  String? get username => throw _privateConstructorUsedError;
  String? get codeCountry => throw _privateConstructorUsedError;
  String? get number => throw _privateConstructorUsedError;
  String? get age => throw _privateConstructorUsedError;
  String? get lookingFor => throw _privateConstructorUsedError;
  BaseStatus get status => throw _privateConstructorUsedError;
  Exception? get error => throw _privateConstructorUsedError;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AuthStateCopyWith<AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
  @useResult
  $Res call(
      {String? username,
      String? codeCountry,
      String? number,
      String? age,
      String? lookingFor,
      BaseStatus status,
      Exception? error});
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = freezed,
    Object? codeCountry = freezed,
    Object? number = freezed,
    Object? age = freezed,
    Object? lookingFor = freezed,
    Object? status = null,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      codeCountry: freezed == codeCountry
          ? _value.codeCountry
          : codeCountry // ignore: cast_nullable_to_non_nullable
              as String?,
      number: freezed == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String?,
      age: freezed == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as String?,
      lookingFor: freezed == lookingFor
          ? _value.lookingFor
          : lookingFor // ignore: cast_nullable_to_non_nullable
              as String?,
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
}

/// @nodoc
abstract class _$$AuthStateImplCopyWith<$Res>
    implements $AuthStateCopyWith<$Res> {
  factory _$$AuthStateImplCopyWith(
          _$AuthStateImpl value, $Res Function(_$AuthStateImpl) then) =
      __$$AuthStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? username,
      String? codeCountry,
      String? number,
      String? age,
      String? lookingFor,
      BaseStatus status,
      Exception? error});
}

/// @nodoc
class __$$AuthStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthStateImpl>
    implements _$$AuthStateImplCopyWith<$Res> {
  __$$AuthStateImplCopyWithImpl(
      _$AuthStateImpl _value, $Res Function(_$AuthStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = freezed,
    Object? codeCountry = freezed,
    Object? number = freezed,
    Object? age = freezed,
    Object? lookingFor = freezed,
    Object? status = null,
    Object? error = freezed,
  }) {
    return _then(_$AuthStateImpl(
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      codeCountry: freezed == codeCountry
          ? _value.codeCountry
          : codeCountry // ignore: cast_nullable_to_non_nullable
              as String?,
      number: freezed == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String?,
      age: freezed == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as String?,
      lookingFor: freezed == lookingFor
          ? _value.lookingFor
          : lookingFor // ignore: cast_nullable_to_non_nullable
              as String?,
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

class _$AuthStateImpl implements _AuthState {
  const _$AuthStateImpl(
      {this.username,
      this.codeCountry,
      this.number,
      this.age,
      this.lookingFor,
      this.status = BaseStatus.initial,
      this.error});

  @override
  final String? username;
  @override
  final String? codeCountry;
  @override
  final String? number;
  @override
  final String? age;
  @override
  final String? lookingFor;
  @override
  @JsonKey()
  final BaseStatus status;
  @override
  final Exception? error;

  @override
  String toString() {
    return 'AuthState(username: $username, codeCountry: $codeCountry, number: $number, age: $age, lookingFor: $lookingFor, status: $status, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthStateImpl &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.codeCountry, codeCountry) ||
                other.codeCountry == codeCountry) &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.lookingFor, lookingFor) ||
                other.lookingFor == lookingFor) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, username, codeCountry, number,
      age, lookingFor, status, error);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthStateImplCopyWith<_$AuthStateImpl> get copyWith =>
      __$$AuthStateImplCopyWithImpl<_$AuthStateImpl>(this, _$identity);
}

abstract class _AuthState implements AuthState {
  const factory _AuthState(
      {final String? username,
      final String? codeCountry,
      final String? number,
      final String? age,
      final String? lookingFor,
      final BaseStatus status,
      final Exception? error}) = _$AuthStateImpl;

  @override
  String? get username;
  @override
  String? get codeCountry;
  @override
  String? get number;
  @override
  String? get age;
  @override
  String? get lookingFor;
  @override
  BaseStatus get status;
  @override
  Exception? get error;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthStateImplCopyWith<_$AuthStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

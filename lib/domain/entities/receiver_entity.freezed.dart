// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'receiver_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ReceiverEntity _$ReceiverEntityFromJson(Map<String, dynamic> json) {
  return _ReceiverEntity.fromJson(json);
}

/// @nodoc
mixin _$ReceiverEntity {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  /// Serializes this ReceiverEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReceiverEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReceiverEntityCopyWith<ReceiverEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReceiverEntityCopyWith<$Res> {
  factory $ReceiverEntityCopyWith(
          ReceiverEntity value, $Res Function(ReceiverEntity) then) =
      _$ReceiverEntityCopyWithImpl<$Res, ReceiverEntity>;
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class _$ReceiverEntityCopyWithImpl<$Res, $Val extends ReceiverEntity>
    implements $ReceiverEntityCopyWith<$Res> {
  _$ReceiverEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReceiverEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReceiverEntityImplCopyWith<$Res>
    implements $ReceiverEntityCopyWith<$Res> {
  factory _$$ReceiverEntityImplCopyWith(_$ReceiverEntityImpl value,
          $Res Function(_$ReceiverEntityImpl) then) =
      __$$ReceiverEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class __$$ReceiverEntityImplCopyWithImpl<$Res>
    extends _$ReceiverEntityCopyWithImpl<$Res, _$ReceiverEntityImpl>
    implements _$$ReceiverEntityImplCopyWith<$Res> {
  __$$ReceiverEntityImplCopyWithImpl(
      _$ReceiverEntityImpl _value, $Res Function(_$ReceiverEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReceiverEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$ReceiverEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReceiverEntityImpl implements _ReceiverEntity {
  const _$ReceiverEntityImpl({required this.id, required this.name});

  factory _$ReceiverEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReceiverEntityImplFromJson(json);

  @override
  final int id;
  @override
  final String name;

  @override
  String toString() {
    return 'ReceiverEntity(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReceiverEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  /// Create a copy of ReceiverEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReceiverEntityImplCopyWith<_$ReceiverEntityImpl> get copyWith =>
      __$$ReceiverEntityImplCopyWithImpl<_$ReceiverEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReceiverEntityImplToJson(
      this,
    );
  }
}

abstract class _ReceiverEntity implements ReceiverEntity {
  const factory _ReceiverEntity(
      {required final int id,
      required final String name}) = _$ReceiverEntityImpl;

  factory _ReceiverEntity.fromJson(Map<String, dynamic> json) =
      _$ReceiverEntityImpl.fromJson;

  @override
  int get id;
  @override
  String get name;

  /// Create a copy of ReceiverEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReceiverEntityImplCopyWith<_$ReceiverEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

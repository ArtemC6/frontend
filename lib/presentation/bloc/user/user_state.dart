part of 'user_bloc.dart';

@freezed
class UserState with _$UserState {
  const factory UserState({
    UserEntity? user,
    @JsonKey(defaultValue: BaseStatus.initial) BaseStatus? status,
  }) = _UserState;
}

part of 'user_bloc.dart';

@freezed
class UserEvent with _$UserEvent {
  const factory UserEvent.fetchUser() = _FetchUser;
  const factory UserEvent.updateLookingFor(String lookingFor) =
      _UpdateLookingFor;
}

part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.enterUsername({required String username}) =
      _EnterUsername;

  const factory AuthEvent.enterPhoneNumber({
    required String code,
    required String number,
  }) = _EnterPhoneNumber;

  const factory AuthEvent.enterAge({required String age}) = _EnterAge;
}

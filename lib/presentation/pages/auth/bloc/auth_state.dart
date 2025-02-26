part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    String? username,
    String? codeCountry,
    String? number,
    String? age,
    String? lookingFor,
    @Default(BaseStatus.initial) BaseStatus status,
    Exception? error,
  }) = _AuthState;
  // const factory AuthState.initial() = _Initial;
  // const factory AuthState.success() = _Success;
  // const factory AuthState.loading() = _Loading;
  // const factory AuthState.filling({
  //   String? username,
  //   String? code,
  //   String? number,
  //   String? age,
  //   String? lookingFor,
  // }) = _Filling;
  // const factory AuthState.failure({required String error}) = _Failure;
}

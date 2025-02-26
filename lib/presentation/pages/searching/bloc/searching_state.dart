part of 'searching_bloc.dart';

@freezed
class SearchingState with _$SearchingState {
  const factory SearchingState.initial() = _Initial;
  const factory SearchingState.videoCall() = _VideoCall;
  const factory SearchingState.chatAlreadyExist() = _ChatAlreadyExist;
  const factory SearchingState.chat({required String room}) = _Chat;
  const factory SearchingState.nothing() = _Nothing;
  const factory SearchingState.failed({required Exception error}) = _Failed;
}

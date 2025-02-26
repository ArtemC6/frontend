part of 'chat_bloc.dart';

@freezed
class ChatEvent with _$ChatEvent {
  const factory ChatEvent.initialize({
    required String? room,
    required bool? chatIsExist,
  }) = _Initialize;
  const factory ChatEvent.connect() = _Connect;
  const factory ChatEvent.addMessage({required String message}) = _AddMessage;
  const factory ChatEvent.messageReceived({required MessageEntity message}) =
      _MessageReceived;
  const factory ChatEvent.disconnect() = _Disconnect;
}

part of 'chat_bloc.dart';

@freezed
class ChatState with _$ChatState {
  const factory ChatState({
    @Default([]) List<MessageEntity>? messages,
    HistoryEntity? history,
    ReceiverEntity? receiver,
    @Default(false) bool? displayName,
    @Default(BaseStatus.initial) BaseStatus status,
    Exception? error,
  }) = _ChatState;
}

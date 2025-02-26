import 'dart:async';
import 'dart:developer';
import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend/domain/entities/history_entity.dart';
import 'package:frontend/domain/entities/message_entity.dart';
import 'package:frontend/domain/entities/receiver_entity.dart';
import 'package:frontend/domain/resources/message_owner_enum.dart';
import 'package:frontend/domain/use_cases/chat_use_case.dart';
import 'package:frontend/domain/use_cases/user_use_case.dart';
import 'package:frontend/presentation/resources/app_enums.dart';

part 'chat_event.dart';
part 'chat_state.dart';
part 'chat_bloc.freezed.dart';

class ChatBloc extends Bloc<ChatEvent, ChatState> {
  StreamSubscription<MessageEntity>? _streamSubscription;
  final ChatUseCase _chatUseCase;
  final UserUseCase _userUseCase;

  late String _room;

  ChatBloc({
    required ChatUseCase chatUseCase,
    required UserUseCase userUseCase,
  })  : _chatUseCase = chatUseCase,
        _userUseCase = userUseCase,
        super(const ChatState()) {
    on<_Initialize>(_onInitialize);
    on<_Connect>(_onConnect);
    on<_AddMessage>(_onAddMessage);
    on<_MessageReceived>(_onMessageReceived);
    on<_Disconnect>(_onDisconnect);
  }

  void _onInitialize(_Initialize event, Emitter emit) async {
    emit(
      state.copyWith(status: BaseStatus.loading),
    );
    if (event.room == null && event.chatIsExist == true) {
      final histories = await _chatUseCase.chatsHistory();
      log(histories.length.toString());
      final history = histories.lastOrNull;
      final receiver = history?.receiver;
      final messages = await _chatUseCase.chatHistory(receiverID: receiver!.id);

      emit(
        state.copyWith(
          history: history,
          receiver: receiver,
          messages: messages.reversed.toList(),
          displayName: _otherMessageIsContain(messages),
        ),
      );
      if (history != null) {
        _room = history.roomName;
      }
    } else {
      if (event.room != null) {
        _room = event.room!;
      }
    }
    emit(
      state.copyWith(status: BaseStatus.success),
    );
  }

  void _onConnect(_Connect event, Emitter emit) async {
    emit(
      state.copyWith(status: BaseStatus.loading),
    );
    await _chatUseCase.connect(roomName: _room);
    if (state.history != null) {
      final history = await _chatUseCase.chatHistory(
          receiverID: state.history!.receiver.id);
      final displayName = history.any(
        (message) => message.owner == MessageOwner.other,
      );
      emit(
        state.copyWith(
          messages: history.reversed.toList(),
          displayName: displayName,
        ),
      );
    }
    _streamSubscription ??= _chatUseCase.messagesStream.listen(
      (message) => add(
        _MessageReceived(message: message),
      ),
    );
    emit(
      state.copyWith(status: BaseStatus.success),
    );
  }

  Future<void> _onMessageReceived(_MessageReceived event, Emitter emit) async {
    final messages = (state.messages ?? []).reversed.toList();
    final updatedMessages = [...messages, event.message].reversed.toList();
    emit(
      state.copyWith(
        messages: updatedMessages,
      ),
    );

    if (state.displayName == false) {
      final shouldUpdateReceiver =
          state.receiver == null || _otherMessageIsContain(updatedMessages);
      final shouldUpdateDisplayName = _otherMessageIsContain(updatedMessages);

      if (shouldUpdateReceiver) {
        final userID = updatedMessages
            .where(
              (message) => message.owner == MessageOwner.other,
            )
            .first
            .senderId;
        if (userID != null) {
          try {
            final user = await _userUseCase.getUser(userID);
            final receiver = ReceiverEntity(id: userID, name: user.name);

            emit(
              state.copyWith(
                receiver: receiver,
                displayName: shouldUpdateDisplayName,
              ),
            );
          } on DioException catch (e) {
            log(e.toString());
          }
        }
      }
    }

    // if (state.displayName == false && state.receiver == null) { // Здесь мы просто пытаемся получить собеседника
    //   final histories = await _chatUseCase.chatsHistory();
    //   final receiver = histories.lastOrNull?.receiver;
    //   emit(
    //     state.copyWith(receiver: receiver),
    //   );
    // }

    // if (state.displayName == false && _otherMessageIsContain(updatedMessages)) { // здесь мы пытаемся получить и отобразить собеседника
    //   final histories = await _chatUseCase.chatsHistory();
    //   final receiver = histories.lastOrNull?.receiver;
    //   emit(
    //     state.copyWith(
    //       receiver: receiver,
    //       displayName: _otherMessageIsContain(updatedMessages),
    //     ),
    //   );
    // }
  }

  bool _otherMessageIsContain(List<MessageEntity> messages) {
    // проверка на
    final data = messages.any(
      (message) => message.owner == MessageOwner.other,
    );
    return data;
  }

  void _onAddMessage(_AddMessage event, Emitter<ChatState> emit) {
    _chatUseCase.sendMessage(event.message);
  }

  void _onDisconnect(_Disconnect event, Emitter<ChatState> emit) {
    _streamSubscription?.cancel();
    _chatUseCase.disconnect();
  }

  @override
  Future<void> close() {
    _streamSubscription?.cancel();
    _chatUseCase.disconnect();
    return super.close();
  }
}

import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend/data/exceptions/network_exceptions.dart';
import 'package:frontend/domain/use_cases/chat_use_case.dart';
import 'package:frontend/domain/use_cases/meeting_use_case.dart';
import 'package:frontend/domain/use_cases/user_use_case.dart';

part 'searching_event.dart';
part 'searching_state.dart';
part 'searching_bloc.freezed.dart';

class SearchingBloc extends Bloc<SearchingEvent, SearchingState> {
  final MeetingUseCase _meetingUseCase;
  final ChatUseCase _chatUseCase;
  final UserUseCase _userUseCase;
  Timer? _timer; // Добавляем таймер

  SearchingBloc({
    required MeetingUseCase meetingUseCase,
    required ChatUseCase chatUseCase,
    required UserUseCase userUseCase,
  })  : _meetingUseCase = meetingUseCase,
        _chatUseCase = chatUseCase,
        _userUseCase = userUseCase,
        super(const _Initial()) {
    on<_Started>(_onStarted);
    on<_CheckSimilarities>(
        _onCheckSimilarities); // Добавляем обработчик проверки
  }

  @override
  Future<void> close() {
    _timer?.cancel();
    return super.close();
  }

  Future<void> _onStarted(_Started event, Emitter emit) async {
    try {
      final user = await _userUseCase.getProfile();
      final lookingFor = user?.lookingFor;

      final histories = await _chatUseCase.chatsHistory();

      if (histories.isNotEmpty) {
        return emit(
          const SearchingState.chatAlreadyExist(),
        );
      }

      if (lookingFor == null) {
        return emit(
          const SearchingState.nothing(),
        );
      }

      if (lookingFor == 'chat') {
        final data = await _chatUseCase.handleChat();

        if (data != null) {
          emit(
            SearchingState.chat(room: data),
          );
        } else {
          await _startPeriodicCheckingChat(event, emit);
          emit(const SearchingState.nothing());
        }
      } else {
        final data = await _meetingUseCase.checkMeeting();
        log(data);
      }
    } on DioException catch (e) {
      emit(
        SearchingState.failed(error: e),
      );
      if (e is Unauthorized) {
        _timer?.cancel();
      }
    }
  }

  Future<void> _startPeriodicCheckingChat(event, Emitter emit) async {
    _timer?.cancel();
    _timer = Timer.periodic(
      const Duration(seconds: 30),
      (_) => add(const _CheckSimilarities()),
    );
  }

  Future<void> _onCheckSimilarities(
    _CheckSimilarities event,
    Emitter emit,
  ) async {
    try {
      final data = await _chatUseCase.handleChat();

      if (data != null) {
        _timer?.cancel();
        emit(SearchingState.chat(room: data));
      } else {
        emit(const SearchingState.nothing());
      }
    } on DioException catch (e) {
      emit(SearchingState.failed(error: e));
      if (e is Unauthorized) {
        _timer?.cancel();
      }
    }
  }
}

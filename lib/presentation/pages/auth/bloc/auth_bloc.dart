import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend/domain/entities/user_entity.dart';
import 'package:frontend/domain/use_cases/user_use_case.dart';
import 'package:frontend/presentation/helpers/phone_number_trimmer.dart';
import 'package:frontend/presentation/resources/app_enums.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final UserUseCase _userUseCase;

  AuthBloc({required UserUseCase userUseCase})
      : _userUseCase = userUseCase,
        super(const AuthState()) {
    on<_EnterUsername>(_onEnterUsername);
    on<_EnterPhoneNumber>(_onEnterPhoneNumber);
    on<_EnterAge>(_onEnterAge);
  }

  void _emitSuccessAndFillingState(AuthState state, Emitter emit) {
    emit(
      state.copyWith(status: BaseStatus.filling),
    );
    emit(
      state.copyWith(status: BaseStatus.success),
    );
  }

  Future<void> _onEnterUsername(_EnterUsername event, Emitter emit) async {
    emit(
      state.copyWith(
        status: BaseStatus.loading,
      ),
    );
    final currentState = state.copyWith(username: event.username);
    emit(currentState);
    _emitSuccessAndFillingState(state, emit);
  }

  Future<void> _onEnterPhoneNumber(
    _EnterPhoneNumber event,
    Emitter emit,
  ) async {
    emit(
      state.copyWith(
        status: BaseStatus.loading,
      ),
    );
    final number = PhoneNumberTrimmer.onlyNumbers(event.number);
    final currentState = state.copyWith(
      codeCountry: event.code,
      number: number,
    );
    emit(currentState);
    _emitSuccessAndFillingState(state, emit);
  }

  Future<void> _onEnterAge(_EnterAge event, Emitter emit) async {
    try {
      emit(
        state.copyWith(
          age: event.age,
          status: BaseStatus.loading,
        ),
      );
      final user = UserEntity(
        phone: state.number!,
        name: state.username!,
        age: int.parse(state.age!),
        countryIso: state.codeCountry!,
      );
      await _userUseCase.createProfile(user: user);
      _emitSuccessAndFillingState(state, emit);
    } on DioException catch (e) {
      log(state.toString());
      final errorState = state.copyWith(
        error: e,
        status: BaseStatus.failure,
      );
      emit(errorState);
    }
  }
}

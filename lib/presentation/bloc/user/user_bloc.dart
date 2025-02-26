import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend/domain/entities/user_entity.dart';
import 'package:frontend/domain/use_cases/user_use_case.dart';
import 'package:frontend/presentation/resources/app_enums.dart';

part 'user_event.dart';
part 'user_state.dart';
part 'user_bloc.freezed.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  final UserUseCase _userUseCase;
  UserBloc({
    required UserUseCase userUseCase,
  })  : _userUseCase = userUseCase,
        super(const UserState()) {
    on<_UpdateLookingFor>(_onUpdateLookingFor);
    on<_FetchUser>(_onFetchUser);
  }

  Future<void> _onFetchUser(_FetchUser event, Emitter emit) async {
    emit(
      state.copyWith(status: BaseStatus.loading),
    );
    final user = await _userUseCase.getProfile();
    emit(
      state.copyWith(
        status: BaseStatus.success,
        user: user,
      ),
    );
  }

  Future<void> _onUpdateLookingFor(
    _UpdateLookingFor event,
    Emitter emit,
  ) async {
    emit(
      state.copyWith(status: BaseStatus.loading),
    );
    await _userUseCase.updateLookingFor(event.lookingFor);
    final user = await _userUseCase.getProfile();
    if (user != null) {
      final currentUser = user.copyWith(lookingFor: event.lookingFor);
      emit(
        state.copyWith(
          user: currentUser,
          status: BaseStatus.success,
        ),
      );
    }
  }
}

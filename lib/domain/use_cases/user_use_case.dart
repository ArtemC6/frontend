import 'package:frontend/domain/entities/user_entity.dart';
import 'package:frontend/domain/repositories/auth_repository.dart';
import 'package:frontend/domain/repositories/token_repository.dart';
import 'package:frontend/domain/repositories/user_repository.dart';

class UserUseCase {
  final AuthRepository _authRepository;
  final UserRepository _userRepository;
  final TokenRepository _tokenRepository;

  UserUseCase({
    required AuthRepository authRepository,
    required UserRepository userRepository,
    required TokenRepository tokenRepository,
  })  : _authRepository = authRepository,
        _tokenRepository = tokenRepository,
        _userRepository = userRepository;

  Future<void> updateLookingFor(String lookingFor) async {
    final user = await _userRepository.getLocalProfile();
    if (user != null) {
      _userRepository.updateLocalProfile(
        user.copyWith(
          lookingFor: lookingFor,
        ),
      );
    }
    await _userRepository.updateLookingFor(lookingFor);
  }

  Future<UserEntity> createProfile({required UserEntity user}) async {
    final result = await _authRepository.createProfile(user);
    final access = result.token;
    await _userRepository.createLocalProfile(result.user);
    await _tokenRepository.createOrUpdateAccessToken(access);
    return result.user;
  }

  Future<UserEntity?> getProfile() async {
    return await _userRepository.getLocalProfile();
  }

  Future<UserEntity> getUser(int id) async {
    return await _userRepository.getUserByID(id: id);
  }

  Future<UserEntity> updateProfile(UserEntity user) async {
    await _userRepository.updateLocalProfile(user);
    return await _userRepository.updateProfile(user);
  }
}

import 'package:frontend/domain/entities/result.dart';
import 'package:frontend/domain/entities/user_entity.dart';

abstract class AuthRepository {
  Future<Result> createProfile(UserEntity user);

  Future<String> refreshToken({required String refresh});
}

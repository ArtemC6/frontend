import 'package:frontend/domain/entities/user_entity.dart';

abstract class UserRepository {
  Future<void> updateLookingFor(String lookingFor);
  Future<UserEntity> updateProfile(UserEntity user);

  Future<UserEntity?> getLocalProfile();

  Future<UserEntity> getUserByID({required int id});

  Future<void> createLocalProfile(UserEntity user);
  Future<void> updateLocalProfile(UserEntity user);
  Future<void> deleteLocalProfile();
}

import 'dart:convert';

import 'package:frontend/data/datasources/local/secure_storage_datasource.dart';
import 'package:frontend/data/datasources/remote/user_datasource.dart';
import 'package:frontend/domain/entities/user_entity.dart';
import 'package:frontend/domain/repositories/user_repository.dart';

class UserRepositoryImpl implements UserRepository {
  final UserDatasource _userDatasource;
  final SecureStorageDatasource _storageDatasource;

  UserRepositoryImpl({
    required UserDatasource userDatasource,
    required SecureStorageDatasource storageDatasource,
  })  : _userDatasource = userDatasource,
        _storageDatasource = storageDatasource;

  @override
  Future<void> updateLookingFor(String lookingFor) async {
    await _userDatasource.updateLookingFor({'looking_for': lookingFor});
  }

  @override
  Future<UserEntity> getUserByID({required int id}) async {
    return await _userDatasource.getUserByID(id.toString());
  }

  @override
  Future<UserEntity> updateProfile(UserEntity user) async {
    return await _userDatasource.updateProfile(user);
  }

  @override
  Future<void> createLocalProfile(UserEntity user) async {
    final userAsString = json.encode(user.toJson());
    await _storageDatasource.create(key: 'user', value: userAsString);
  }

  @override
  Future<void> deleteLocalProfile() async {
    await _storageDatasource.delete(key: 'user');
  }

  @override
  Future<UserEntity?> getLocalProfile() async {
    final userAsString = await _storageDatasource.read(key: 'user');
    if (userAsString != null) {
      final userAsJson = json.decode(userAsString);
      return UserEntity.fromJson(userAsJson);
    }
    return null;
  }

  @override
  Future<void> updateLocalProfile(UserEntity user) async {
    final userAsString = json.encode(user.toJson());
    await _storageDatasource.update(key: 'user', value: userAsString);
  }
}

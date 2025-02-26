import 'package:frontend/data/datasources/remote/auth_datasource.dart';
import 'package:frontend/domain/entities/result.dart';
import 'package:frontend/domain/entities/user_entity.dart';
import 'package:frontend/domain/repositories/auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthDatasource _authDatasource;

  AuthRepositoryImpl({required AuthDatasource authDatasource})
      : _authDatasource = authDatasource;

  @override
  Future<Result> createProfile(UserEntity user) async {
    return await _authDatasource.createProfile(user.toJson());
  }

  @override
  Future<String> refreshToken({required String refresh}) async {
    final data = await _authDatasource.refreshToken({'refresh': refresh});
    return data['access']!;
  }
}

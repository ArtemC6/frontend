import 'package:frontend/data/datasources/local/secure_storage_datasource.dart';
import 'package:frontend/domain/repositories/token_repository.dart';

class TokenRepositoryImpl implements TokenRepository {
  final SecureStorageDatasource _secureStorage;

  TokenRepositoryImpl({required SecureStorageDatasource secureStorage})
      : _secureStorage = secureStorage;

/*   Future<void> createOrUpdate({String? access, String? refresh}) async {
    if (access != null) {
      await _secureStorage.create(key: 'access', value: access);
    }
    if (refresh != null) {
      await _secureStorage.create(key: 'refresh', value: refresh);
    }
  } */

  @override
  Future<String?> getAccessToken() async {
    return await _secureStorage.read(key: 'access');
  }

  @override
  Future<void> createOrUpdateAccessToken(String access) async {
    await _secureStorage.create(key: 'access', value: access);
  }

  @override
  Future<void> deleteAccessToken() async {
    await _secureStorage.delete(key: 'access');
  }

  /*   Future<void> deleteAll() async {
    await deleteAccess();
    await deleteRefresh();
  } */
}

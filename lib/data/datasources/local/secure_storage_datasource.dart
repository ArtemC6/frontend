import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureStorageDatasource {
  final FlutterSecureStorage _storage;

  SecureStorageDatasource({required FlutterSecureStorage storage})
      : _storage = storage;

  Future<void> create({required String key, required String value}) async {
    await _storage.write(key: key, value: value);
  }

  Future<String?> read({required String key}) async {
    return await _storage.read(key: key);
  }

  Future<void> update({required String key, required String value}) async {
    final data = await _storage.read(key: key);
    if (data != null) {
      await _storage.write(key: key, value: value);
    }
  }

  Future<void> delete({required String key}) async {
    final data = await _storage.read(key: key);
    if (data != null) {
      await _storage.delete(key: key);
    }
  }
}

abstract class TokenRepository {
  Future<String?> getAccessToken();

  Future<void> createOrUpdateAccessToken(String access);

  Future<void> deleteAccessToken();
}

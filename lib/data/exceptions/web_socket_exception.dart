sealed class AppWebSocketException implements Exception {
  final String message;
  final int? code;

  const AppWebSocketException(this.message, this.code);
}

class Unauthorized extends AppWebSocketException {
  const Unauthorized() : super('Unauthorized', 401);
}

class Forbidden extends AppWebSocketException {
  const Forbidden() : super('Forbidden', 403);
}

class Unknown extends AppWebSocketException {
  const Unknown() : super('Unknown', -1);
}

class NetworkException extends AppWebSocketException {
  const NetworkException({required String message, int? code})
      : super(message, code); // Передаем параметры через конструктор
}

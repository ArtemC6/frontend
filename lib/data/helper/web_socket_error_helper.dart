import 'dart:io';

import 'package:frontend/data/exceptions/web_socket_exception.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

class WebSocketErrorHelper {
  static Exception parseAndThrowError(Exception error) {
    if (error is WebSocketChannelException &&
        error.inner is WebSocketException) {
      final statusCode = (error.inner as WebSocketException).httpStatusCode;

      return switch (statusCode) {
        401 => const Unauthorized(),
        403 => const Forbidden(),
        _ => const Unknown(),
      };
    }
    return const NetworkException(message: 'Network error');
  }
}

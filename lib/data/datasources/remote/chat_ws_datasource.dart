import 'dart:async';

import 'package:frontend/data/helper/web_socket_error_helper.dart';
import 'package:frontend/data/resources/api_urls.dart';
import 'package:web_socket_channel/io.dart';

class ChatWsDatasource {
  final uri = Uri.parse('$baseWebSocketUrl/ws/chats/');
  late StreamController<String> _messageController;
  final StreamController<Exception> _errorController =
      StreamController.broadcast();
  IOWebSocketChannel? _channel;
  bool _channelIsClose = true;

  Future<void> connect(String roomName, String token) async {
    final url = Uri.parse('$uri$roomName/?token=$token');
    try {
      if (_channel != null && !_channelIsClose) {
        return;
      }
      _messageController = StreamController<String>();
      _channel = IOWebSocketChannel.connect(
        url,
        connectTimeout: const Duration(seconds: 10),
      );
      _channelIsClose = false;
      _channel?.stream.listen(
        (message) => _messageController.add(message),
        onError: (error) {
          _errorController.add(
            WebSocketErrorHelper.parseAndThrowError(error),
          );
        },
        cancelOnError: false,
      );
    } catch (error) {
      _errorController.add(
        WebSocketErrorHelper.parseAndThrowError(error as Exception),
      );
    }
  }

  Future<void> reconnect(String roomName, String token) async {
    disconnect();
    await connect(roomName, token);
  }

  Stream<String> get messagesStream => _messageController.stream;

  Stream<Exception> get errorStream => _errorController.stream;

  void sendMessage(String message) async {
    _channel?.sink.add(message);
  }

  void disconnect() async {
    _channelIsClose = true;
    if (_channel != null && !_channelIsClose) {
      _channel?.sink.close();
    }
    if (!_messageController.isClosed) {
      _messageController.close();
    }
  }
}

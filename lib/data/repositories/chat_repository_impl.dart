import 'dart:convert';
import 'dart:developer';

import 'package:frontend/data/datasources/remote/chat_datasource.dart';
import 'package:frontend/data/datasources/remote/chat_ws_datasource.dart';
import 'package:frontend/domain/entities/history_entity.dart';
import 'package:frontend/domain/entities/message_entity.dart';
import 'package:frontend/domain/repositories/chat_repository.dart';

class ChatRepositoryImpl implements ChatRepository {
  final ChatDatasource _chatDatasource;
  final ChatWsDatasource _chatWsDatasource;

  ChatRepositoryImpl({
    required ChatDatasource chatDatasource,
    required ChatWsDatasource chatWsDatasource,
  })  : _chatDatasource = chatDatasource,
        _chatWsDatasource = chatWsDatasource;

  @override
  Future<String?> handleChat() async {
    final data = await _chatDatasource.handleChat();
    log(data);
    final result = json.decode(data) as Map<String, dynamic>;
    return result['room_name'];
  }

  @override
  Future<List<HistoryEntity>> chatsHistory() async {
    return await _chatDatasource.chatsHistory();
  }

  @override
  Future<List<MessageEntity>> chatHistory({required int receiverID}) async {
    return await _chatDatasource.chatHistory(receiverID.toString());
  }

  @override
  Future<void> connect({
    required String roomName,
    required String token,
  }) async {
    try {
      await _chatWsDatasource.connect(roomName, token);
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future<void> reconnect({
    required String roomName,
    required String token,
  }) async {
    try {
      await _chatWsDatasource.reconnect(roomName, token);
    } catch (_) {
      rethrow;
    }
  }

  @override
  void disconnect() {
    _chatWsDatasource.disconnect();
  }

  @override
  void sendMessage(String message) {
    _chatWsDatasource.sendMessage(message);
  }

  @override
  Stream<MessageEntity> get messagesStream => _messageTransformer();

  @override
  Stream<Exception> get errorStream => _chatWsDatasource.errorStream;

  Stream<MessageEntity> _messageTransformer() async* {
    try {
      await for (final messageAsString in _chatWsDatasource.messagesStream) {
        final messageAsJson = json.decode(messageAsString);
        yield MessageEntity.fromJson(messageAsJson);
      }
    } catch (e) {
      log(e.toString());
    }
  }
}

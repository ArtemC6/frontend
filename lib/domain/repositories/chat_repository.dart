import 'package:frontend/domain/entities/history_entity.dart';
import 'package:frontend/domain/entities/message_entity.dart';

abstract class ChatRepository {
  Future<String?> handleChat();

  Future<List<HistoryEntity>> chatsHistory();

  Future<List<MessageEntity>> chatHistory({required int receiverID});

  Future<void> connect({required String roomName, required String token});
  
  Future<void> reconnect({required String roomName, required String token});

  void disconnect();

  void sendMessage(String message);

  Stream<MessageEntity> get messagesStream;

  Stream<Exception> get errorStream;
}

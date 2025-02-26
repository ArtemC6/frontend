import 'dart:async';
import 'dart:convert';
import 'dart:developer';

import 'package:frontend/domain/entities/history_entity.dart';
import 'package:frontend/domain/entities/message_entity.dart';
import 'package:frontend/domain/repositories/auth_repository.dart';
import 'package:frontend/domain/repositories/chat_repository.dart';
import 'package:frontend/domain/repositories/token_repository.dart';
import 'package:frontend/domain/repositories/user_repository.dart';
import 'package:frontend/domain/resources/message_owner_enum.dart';

class ChatUseCase {
  final ChatRepository _chatRepository;
  final TokenRepository _tokenRepository;
  final UserRepository _userRepository;

  int? _userID;

  ChatUseCase({
    required ChatRepository chatRepository,
    required TokenRepository tokenRepository,
    required UserRepository userRepository,
    required AuthRepository authRepository,
  })  : _chatRepository = chatRepository,
        _tokenRepository = tokenRepository,
        _userRepository = userRepository;

  Future<String?> handleChat() async {
    return await _chatRepository.handleChat();
  }

  Future<List<HistoryEntity>> chatsHistory() async {
    return await _chatRepository.chatsHistory();
  }

  Future<List<MessageEntity>> chatHistory({required int receiverID}) async {
    _updateUserID();
    final history = await _chatRepository.chatHistory(receiverID: receiverID);
    final result = history.map(
      (message) {
        final owner = message.sender?.id == _userID
            ? MessageOwner.me
            : MessageOwner.other;
        return message.copyWith(owner: owner);
      },
    ).toList();
    return result
      ..sort(
        (a, b) => a.timestamp!.compareTo(b.timestamp!),
      );
  }

  Future<void> connect({required String roomName}) async {
    try {
      final token = await _tokenRepository.getAccessToken();
      final user = await _userRepository.getLocalProfile();

      if (user == null || user.id == null) {
        throw Exception("User profile or ID is missing");
      } else {
        _userID = user.id!;
      }

      if (token != null) {
        _errorListener(roomName, token);
        _chatRepository.connect(roomName: roomName, token: token);
      }
    } catch (e) {
      log('Словил: $e');
    }
  }

  void _errorListener(String roomName, String token) {
    _chatRepository.errorStream.listen(
      (event) async {
        await Future.delayed(const Duration(seconds: 5));
        _reconnect(roomName);
      },
    );
  }

  Future<void> _reconnect(String roomName) async {
    disconnect();
    await connect(roomName: roomName);
  }

  void disconnect() {
    _chatRepository.disconnect();
  }

  void sendMessage(String message) {
    final updatedMessage = MessageEntity(senderId: _userID, message: message);
    final messageAsJson = updatedMessage.toJson();
    final messageAsString = json.encode(messageAsJson);
    _chatRepository.sendMessage(messageAsString);
  }

  Stream<MessageEntity> get messagesStream => messageTransform();

  Stream<MessageEntity> messageTransform() async* {
    try {
      await for (final message in _chatRepository.messagesStream) {
        final owner =
            message.senderId == _userID ? MessageOwner.me : MessageOwner.other;
        yield message.copyWith(owner: owner);
      }
    } catch (e) {
      log(e.toString());
    }
  }

  Future<void> _updateUserID() async {
    if (_userID == null) {
      final user = await _userRepository.getLocalProfile();
      _userID = user?.id;
    }
  }
}

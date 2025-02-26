import 'package:dio/dio.dart';
import 'package:frontend/data/resources/api_urls.dart';
import 'package:frontend/domain/entities/history_entity.dart';
import 'package:frontend/domain/entities/message_entity.dart';
import 'package:retrofit/retrofit.dart';

part 'chat_datasource.g.dart';

@RestApi(baseUrl: baseUrl + chats)
abstract class ChatDatasource {
  factory ChatDatasource(Dio dio) = _ChatDatasource;

  @PUT('/handle/')
  Future<String>
      handleChat(); //! вернет {"detail":"You are already matched!","room_name":""}

  // Вернет:
  /* [
    {
        "room_name": "chat_1_5",
        "receiver_id": 5,
        "last_message": "Hey, how are you?",
        "last_timestamp": "2025-01-31T15:45:12.123456Z"
    },
    {
        "room_name": "chat_2_4",
        "receiver_id": 4,
        "last_message": "See you later!",
        "last_timestamp": "2025-01-31T12:30:45.789123Z"
    }
  ] */
  @GET('/history/')
  Future<List<HistoryEntity>> chatsHistory();

  @GET('/history/{id}') // Где id - receiver_id
  Future<List<MessageEntity>> chatHistory(@Path() String id);
}

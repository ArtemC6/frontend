import 'package:dio/dio.dart';
import 'package:frontend/data/resources/api_urls.dart';
import 'package:retrofit/retrofit.dart';

part 'meeting_datasource.g.dart';

@RestApi(baseUrl: baseUrl + meetings)
abstract class MeetingDatasource {
  factory MeetingDatasource(Dio dio) = _MeetingDatasource;

  @POST('/line/')
  Future<String> createMeeting(); // Позже поменять на другой тип данных

  @GET('/line/check/')
  Future<String> checkMeeting();
}

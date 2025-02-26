import 'package:frontend/data/resources/api_urls.dart';
import 'package:frontend/domain/entities/result.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

part 'auth_datasource.g.dart';

@RestApi(baseUrl: baseUrl + profiles)
abstract class AuthDatasource {
  factory AuthDatasource(Dio dio) = _AuthDatasource;

  @POST('/user/')
  Future<Result> createProfile(@Body() Map<String, dynamic> data);

  @POST('/token/refresh/')
  Future<Map<String, String>> refreshToken(
      @Body() Map<String, String> data); // Return access token
}

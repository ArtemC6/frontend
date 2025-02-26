import 'package:dio/dio.dart';
import 'package:frontend/data/resources/api_urls.dart';
import 'package:frontend/domain/entities/user_entity.dart';
import 'package:retrofit/retrofit.dart';

part 'user_datasource.g.dart';

@RestApi(baseUrl: baseUrl + profiles)
abstract class UserDatasource {
  factory UserDatasource(Dio dio) = _UserDatasource;

  @PUT("/user/")
  Future<UserEntity> updateProfile(@Body() UserEntity user);

  @PUT("/user/looking_for/")
  Future<void> updateLookingFor(@Body() Map<String, String> data);

  @GET("/user/{id}/")
  Future<UserEntity> getUserByID(@Path() String id);
}

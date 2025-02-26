import 'package:auto_route/auto_route.dart';
import 'package:curl_logger_dio_interceptor/curl_logger_dio_interceptor.dart';
import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:frontend/data/datasources/local/secure_storage_datasource.dart';
import 'package:frontend/data/datasources/remote/auth_datasource.dart';
import 'package:frontend/data/datasources/remote/chat_datasource.dart';
import 'package:frontend/data/datasources/remote/chat_ws_datasource.dart';
import 'package:frontend/data/datasources/remote/meeting_datasource.dart';
import 'package:frontend/data/datasources/remote/user_datasource.dart';
import 'package:frontend/data/interceptors/app_interceptors.dart';
import 'package:frontend/data/repositories/auth_repository_impl.dart';
import 'package:frontend/data/repositories/chat_repository_impl.dart';
import 'package:frontend/data/repositories/meeting_repository_impl.dart';
import 'package:frontend/data/repositories/token_repository_impl.dart';
import 'package:frontend/data/repositories/user_repository_impl.dart';
import 'package:frontend/domain/repositories/auth_repository.dart';
import 'package:frontend/domain/repositories/chat_repository.dart';
import 'package:frontend/domain/repositories/meeting_repository.dart';
import 'package:frontend/domain/repositories/token_repository.dart';
import 'package:frontend/domain/repositories/user_repository.dart';
import 'package:frontend/domain/use_cases/chat_use_case.dart';
import 'package:frontend/domain/use_cases/meeting_use_case.dart';
import 'package:frontend/domain/use_cases/user_use_case.dart';
import 'package:frontend/presentation/router/auth_guard.dart';
import 'package:get_it/get_it.dart';

var di = GetIt.instance;

void setup() {
  final BaseOptions options = BaseOptions(
      receiveTimeout: const Duration(seconds: 10),
      connectTimeout: const Duration(seconds: 100),
      sendTimeout: const Duration(seconds: 10),
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      });
  final Dio dio = Dio(options);
  di
    ..registerLazySingleton<Dio>(() => dio)
    ..registerLazySingleton<FlutterSecureStorage>(
      () => const FlutterSecureStorage(),
    )
    ..registerLazySingleton<AutoRouteGuard>(
      () => AuthGuard(
        tokenRepository: di(),
        userRepository: di(),
      ),
    )

    // Datasources
    ..registerLazySingleton<SecureStorageDatasource>(
      () => SecureStorageDatasource(
        storage: di(),
      ),
    )
    ..registerLazySingleton<AuthDatasource>(
      () => AuthDatasource(
        di(),
      ),
    )
    ..registerLazySingleton<UserDatasource>(
      () => UserDatasource(
        di(),
      ),
    )
    ..registerLazySingleton<MeetingDatasource>(
      () => MeetingDatasource(
        di(),
      ),
    )
    ..registerLazySingleton<ChatDatasource>(
      () => ChatDatasource(
        di(),
      ),
    )
    ..registerLazySingleton<ChatWsDatasource>(
      () => ChatWsDatasource(),
    )
    // Repositories
    ..registerLazySingleton<TokenRepository>(
      () => TokenRepositoryImpl(
        secureStorage: di(),
      ),
    )
    ..registerLazySingleton<AuthRepository>(
      () => AuthRepositoryImpl(
        authDatasource: di(),
      ),
    )
    ..registerLazySingleton<UserRepository>(
      () => UserRepositoryImpl(
        storageDatasource: di(),
        userDatasource: di(),
      ),
    )
    ..registerLazySingleton<MeetingRepository>(
      () => MeetingRepositoryImpl(
        meetingDatasource: di(),
      ),
    )
    ..registerLazySingleton<ChatRepository>(
      () => ChatRepositoryImpl(
        chatDatasource: di(),
        chatWsDatasource: di(),
      ),
    )
    // UseCases
    ..registerLazySingleton<UserUseCase>(
      () => UserUseCase(
        authRepository: di(),
        tokenRepository: di(),
        userRepository: di(),
      ),
    )
    ..registerLazySingleton<MeetingUseCase>(
      () => MeetingUseCase(
        meetingRepository: di(),
      ),
    )
    ..registerLazySingleton<ChatUseCase>(
      () => ChatUseCase(
        chatRepository: di(),
        tokenRepository: di(),
        userRepository: di(),
        authRepository: di(),
      ),
    );

  di<Dio>().interceptors.add(
        AppInterceptor(
          tokenRepository: di(),
          dio: di(),
          authRepository: di(),
        ),
      );
  di<Dio>().interceptors.add(
      CurlLoggerDioInterceptor(convertFormData: true, printOnSuccess: true));
}

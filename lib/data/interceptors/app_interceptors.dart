import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:frontend/data/exceptions/network_exceptions.dart';
import 'package:frontend/domain/repositories/auth_repository.dart';
import 'package:frontend/domain/repositories/token_repository.dart';

class AppInterceptor extends QueuedInterceptor {
  final TokenRepository _tokenRepository;

  AppInterceptor({
    required TokenRepository tokenRepository,
    required Dio dio,
    required AuthRepository authRepository,
  }) : _tokenRepository = tokenRepository;

  Future<void> _refreshToken(
    DioException err,
    ErrorInterceptorHandler handler,
  ) async {
    final access = await _tokenRepository.getAccessToken();
    if (access != null) {
      _tokenRepository.deleteAccessToken();
    }
    handler.reject(
      Unauthorized(
        requestOptions: err.requestOptions,
        message: err.message ?? 'Не авторизирован',
      ),
    );
  }

  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    final token = await _tokenRepository.getAccessToken();

    if (token != null) {
      options.headers['Authorization'] = 'Token $token';
      log(token);
    }
    super.onRequest(options, handler);
  }

  @override
  Future<void> onError(
    DioException err,
    ErrorInterceptorHandler handler,
  ) async {
    switch (err.response?.statusCode) {
      case 400:
        handler.reject(
          BadRequest(
            requestOptions: err.requestOptions,
            message: err.message ??
                'Неверный запрос. Пожалуйста, проверьте введённые данные и повторите попытку.',
          ),
        );
      case 401:
        await _refreshToken(err, handler);
      case 403:
        handler.reject(
          Forbidden(
            requestOptions: err.requestOptions,
            message: err.message ??
                'Доступ запрещён. У вас нет прав для выполнения этого действия.',
          ),
        );
      case 404:
        handler.reject(
          NotFound(
            requestOptions: err.requestOptions,
            message: err.message ??
                'Запрашиваемый ресурс не найден. Проверьте правильность ссылки.',
          ),
        );
      case 409:
        handler.reject(
          Conflict(
            requestOptions: err.requestOptions,
            message: err.message ??
                'Конфликт данных. Обновите страницу и попробуйте снова.',
          ),
        );
      case 422:
        handler.reject(
          UnprocessableContent(
            requestOptions: err.requestOptions,
            message: err.message ??
                'Невозможно обработать данные. Проверьте ввод и повторите попытку.',
          ),
        );
      case 429:
        handler.reject(
          TooManyRequests(
            requestOptions: err.requestOptions,
            message: err.message ??
                'Слишком много запросов. Возможно закончились токены.',
          ),
        );
      case 500 || 502 || 503:
        handler.reject(
          ServerUnavailable(
            requestOptions: err.requestOptions,
            message: err.message ??
                'Сервер временно недоступен. Повторите попытку позже.',
          ),
        );
      default:
        handler.reject(
          UnknownError(
            requestOptions: err.requestOptions,
            message: err.message ??
                'Неизвестная ошибка. Повторите попытку позже или обратитесь в поддержку.',
          ),
        );
        break;
    }
  }
}

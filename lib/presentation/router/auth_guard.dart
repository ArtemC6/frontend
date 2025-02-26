import 'package:auto_route/auto_route.dart';
import 'package:frontend/domain/repositories/token_repository.dart';
import 'package:frontend/domain/repositories/user_repository.dart';
import 'package:frontend/presentation/router/app_router.dart';

class AuthGuard extends AutoRouteGuard {
  final TokenRepository _tokenRepository;
  final UserRepository _userRepository;

  AuthGuard({
    required TokenRepository tokenRepository,
    required UserRepository userRepository,
  })  : _tokenRepository = tokenRepository,
        _userRepository = userRepository;

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) async {
    final access = await _tokenRepository.getAccessToken();
    final user = await _userRepository.getLocalProfile();

    // Проверка на доступ (access token)
    if (access == null) {
      if (resolver.route.name != AuthRoute.name) {
        // Перенаправляем на страницу авторизации
        resolver.redirect(AuthRoute());
        resolver.next(false); // Запрещаем навигацию на исходный маршрут
      } else {
        // Разрешаем навигацию на AuthRoute
        resolver.next();
      }
      return; // Завершаем выполнение
    }

    // Проверка на наличие профиля пользователя
    if (user == null || user.lookingFor == null) {
      if (resolver.route.name != LookingForRoute.name) {
        // Перенаправляем на страницу заполнения профиля
        resolver.redirect(LookingForRoute());
        resolver.next(false); // Запрещаем навигацию на исходный маршрут
      } else {
        // Разрешаем навигацию на LookingForRoute или StartTalkingRoute
        resolver.next();
      }
      return; // Завершаем выполнение
    }

    // Если все проверки пройдены, разрешаем навигацию
    resolver.next();
  }
}

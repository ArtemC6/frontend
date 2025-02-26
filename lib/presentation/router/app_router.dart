import 'package:auto_route/auto_route.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frontend/core/di.dart';
import 'package:frontend/presentation/bloc/chat/chat_bloc.dart';
import 'package:frontend/presentation/pages/auth/auth_page.dart';
import 'package:frontend/presentation/pages/call_waiting/call_waiting_page.dart';
import 'package:frontend/presentation/pages/chat/chat_page.dart';
import 'package:frontend/presentation/pages/start_chat/start_chat_page.dart';
import 'package:frontend/presentation/pages/incoming_call/incoming_call_page.dart';
import 'package:frontend/presentation/pages/looking_for/looking_for_page.dart';
import 'package:frontend/presentation/pages/searching/searching_page.dart';
import 'package:frontend/presentation/pages/setup_date/setup_date_page.dart';
import 'package:frontend/presentation/pages/start_talking/start_talking_page.dart';
part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRouteGuard> get guards => [
        di(),
      ];

  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          path: '/auth',
          page: AuthRoute.page,
        ),
        AutoRoute(
          path: '/looking-for',
          page: LookingForRoute.page,
        ),
        AutoRoute(
          path: '/start-talking',
          page: StartTalkingRoute.page,
        ),
        AutoRoute(
          initial: true,
          path: '/searching',
          page: SearchingRoute.page,
        ),
        AutoRoute(
          page: ChatWrapper.page,
          children: [
            AutoRoute(
              initial: true,
              path: 'start-chat',
              page: StartChatRoute.page,
            ),
            AutoRoute(
              path: 'chat',
              page: ChatRoute.page,
            ),
          ],
        ),
        AutoRoute(
          path: '/setup-date',
          page: SetupDateRoute.page,
        ),
        AutoRoute(
          path: '/call-waiting',
          page: CallWaitingRoute.page,
        ),
        AutoRoute(
          path: '/incoming-call',
          page: IncomingCallRoute.page,
        ),
      ];
}

@RoutePage(name: 'ChatWrapper')
class ChatWrap extends StatelessWidget implements AutoRouteWrapper {
  const ChatWrap({super.key});

  @override
  Widget build(BuildContext context) {
    return const AutoRouter();
  }

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (context) => ChatBloc(
        chatUseCase: di(),
        userUseCase: di(),
      ),
      child: this,
    );
  }
}

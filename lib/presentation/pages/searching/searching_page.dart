import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frontend/core/di.dart';
import 'package:frontend/data/exceptions/network_exceptions.dart';
import 'package:frontend/presentation/pages/searching/bloc/searching_bloc.dart';
import 'package:frontend/presentation/pages/searching/widgets/searching_title_widget.dart';
import 'package:frontend/presentation/resources/app_consts.dart';
import 'package:frontend/presentation/router/app_router.dart';
import 'package:frontend/presentation/widgets/base_scaffold.dart';
import 'package:frontend/presentation/widgets/not_alone_title_widget.dart';

@RoutePage()
class SearchingPage extends StatelessWidget {
  const SearchingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SearchingBloc(
        meetingUseCase: di(),
        chatUseCase: di(),
        userUseCase: di(),
      )..add(
          const SearchingEvent.started(),
        ),
      child: BlocListener<SearchingBloc, SearchingState>(
        listener: (context, state) {
          state.whenOrNull(
            chat: (room) => context.router.popAndPush(
              StartChatRoute(room: room),
            ),
            chatAlreadyExist: () => context.router.popAndPush(
              StartChatRoute(chatIsExist: true),
            ),
            videoCall: () => context.router.popAndPush(
              const SetupDateRoute(),
            ),
            failed: (error) {
              if (error is Unauthorized) {
                context.router.popAndPush(
                  AuthRoute(),
                );
              }
            },
          );
        },
        child: BaseScaffold(
          background: AppConsts.backgroundSad,
          padding: const EdgeInsets.only(left: 10, right: 10, top: 15),
          body: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 21,
              vertical: 25,
            ),
            child: Column(
              children: [
                const Flexible(
                    child: Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 25,
                    ),
                    child: NotAloneTitleWidget(),
                  ),
                )),
                Flexible(
                  child: PageView(
                    scrollDirection: Axis.vertical,
                    physics: const NeverScrollableScrollPhysics(),
                    children: const [
                      SearchingTitleWidget(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

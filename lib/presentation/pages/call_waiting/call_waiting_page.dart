import 'package:auto_route/auto_route.dart';
import 'package:flutter/widgets.dart';
import 'package:frontend/presentation/helpers/timer_provider.dart';
import 'package:frontend/presentation/resources/app_consts.dart';
import 'package:frontend/presentation/router/app_router.dart';
import 'package:frontend/presentation/widgets/base_action_banner.dart';
import 'package:frontend/presentation/widgets/base_chat_list_tile.dart';
import 'package:frontend/presentation/widgets/base_scaffold.dart';
import 'package:frontend/presentation/widgets/base_title.dart';
import 'package:provider/provider.dart';

@RoutePage()
class CallWaitingPage extends StatelessWidget {
  const CallWaitingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      background: AppConsts.backgroundFun,
      bottom: BaseActionBanner(
        onPressed: () => context.router.push(
          LookingForRoute(),
        ),
      ),
      body: ChangeNotifierProvider(
        create: (context) => TimerProvider(5)
          ..startTimer(
            () => context.router.push(
              const IncomingCallRoute(),
            ),
          ),
        child: Consumer<TimerProvider>(
          builder: (context, value, child) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 15,
              children: [
                BaseTitle(
                    highlightedText: 'Call ',
                    text: 'is in ${value.secondsRemaining} minute'),
                BaseChatListTile(
                  trailing: ChatTrailing.waiting(
                    onPressed: () {},
                  ),
                  avatar: '?',
                  name: 'Alexandr',
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

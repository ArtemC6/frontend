import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frontend/presentation/bloc/chat/chat_bloc.dart';
import 'package:frontend/presentation/resources/app_colors.dart';
import 'package:frontend/presentation/resources/app_consts.dart';
import 'package:frontend/presentation/resources/app_enums.dart';
import 'package:frontend/presentation/resources/app_text_style.dart';
import 'package:frontend/presentation/router/app_router.dart';
import 'package:frontend/presentation/widgets/base_action_banner.dart';
import 'package:frontend/presentation/widgets/base_chat_list_tile.dart';
import 'package:frontend/presentation/widgets/base_scaffold.dart';

@RoutePage()
class StartChatPage extends StatefulWidget {
  final String? room;
  final bool? chatIsExist;
  const StartChatPage({
    super.key,
    this.room,
    this.chatIsExist = false,
  }) : assert(
          room != null || chatIsExist != null,
          'Значения room и chatIsExist null',
        );

  @override
  State<StartChatPage> createState() => _StartChatPageState();
}

class _StartChatPageState extends State<StartChatPage> {
  @override
  void initState() {
    context.read<ChatBloc>().add(
          ChatEvent.initialize(
            chatIsExist: widget.chatIsExist,
            room: widget.room,
          ),
        );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChatBloc, ChatState>(
      builder: (context, state) {
        final name = state.displayName == true && state.receiver != null
            ? state.receiver!.name
            : 'Name Hidden';
        final avatar = state.receiver != null ? state.receiver!.name : '?';
        return BaseScaffold(
          background: AppConsts.backgroundFun,
          padding: AppConsts.basePadding.copyWith(
            right: 15,
          ),
          bottom: BaseActionBanner(
            onPressed: () => context.router.push(
              LookingForRoute(),
            ),
          ),
          body: Builder(
            builder: (context) {
              if (state.status == BaseStatus.loading ||
                  state.status == BaseStatus.initial) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
              return Column(
                children: [
                  RichText(
                    text: const TextSpan(
                      style: AppTextStyle.bodyLarge,
                      children: [
                        TextSpan(
                          text: 'Fortune! ',
                          style: TextStyle(
                            color: AppColors.secondaryTextColor,
                          ),
                        ),
                        TextSpan(
                          text:
                              'We found the human for you. You could start a chat or wait for he/she to start it.',
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 15,
                      ),
                      child: ListView(
                        padding: EdgeInsets.zero,
                        children: List.generate(
                          1,
                          (index) => BaseChatListTile(
                            trailing: ChatTrailing.chat(
                              onPressed: () => context.router.push(
                                const ChatRoute(),
                              ),
                            ),
                            name: name,
                            avatar: avatar,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        );
      },
    );
  }
}

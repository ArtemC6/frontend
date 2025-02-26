import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frontend/presentation/bloc/chat/chat_bloc.dart';
import 'package:frontend/presentation/pages/chat/widgets/app_bar_widget.dart';
import 'package:frontend/presentation/pages/chat/widgets/message_card_widget.dart';
import 'package:frontend/presentation/pages/chat/widgets/message_text_field.dart';
import 'package:frontend/presentation/resources/app_consts.dart';
import 'package:frontend/presentation/resources/app_enums.dart';
import 'package:frontend/presentation/widgets/base_scaffold.dart';

@RoutePage()
class ChatPage extends StatefulWidget {
  const ChatPage({
    super.key,
  });

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  final TextEditingController _messageController = TextEditingController();

  @override
  void initState() {
    context.read<ChatBloc>().add(
          const ChatEvent.connect(),
        );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChatBloc, ChatState>(
      builder: (context, state) {
        final username = state.displayName == true && state.receiver != null
            ? state.receiver!.name
            : 'Name Hidden';
        final avatar = state.receiver != null ? state.receiver!.name : '?';
        return BaseScaffold(
          backgroundColor: const Color(0xFFFEF7FF),
          appBar: AppBarWidget(
            username: username,
            avatar: avatar,
          ),
          padding: EdgeInsets.zero,
          body: Builder(
            builder: (context) {
              if (state.status == BaseStatus.initial ||
                  state.status == BaseStatus.loading) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
              return Column(
                children: [
                  _buildChatContent(context, state),
                  MessageTextField(
                    controller: _messageController,
                    onSendPressed: (value) {
                      context.read<ChatBloc>().add(
                            ChatEvent.addMessage(
                              message: value,
                            ),
                          );
                      _messageController.clear();
                    },
                  ),
                ],
              );
            },
          ),
        );
      },
    );
  }

  Widget _buildChatContent(BuildContext context, ChatState state) {
    if (state.messages == null) {
      return const Expanded(
        child: Center(
          child: CircularProgressIndicator(),
        ),
      );
    }

    if (state.messages?.isEmpty ?? true) {
      return const Expanded(
        child: Center(
          child: Text('It\'s still empty here.'),
        ),
      );
    }

    return Expanded(
      child: Padding(
        padding: AppConsts.basePadding.copyWith(bottom: 0, top: 0),
        child: ListView.builder(
          reverse: true,
          // shrinkWrap: true,
          physics: const AlwaysScrollableScrollPhysics(),
          itemCount: state.messages!.length,
          itemBuilder: (context, index) => MessageCardWidget(
            receiverUsername: state.receiver?.name ?? '?',
            message: state.messages![index],
            // key: ValueKey(state.messages![index]), // Для оптимизации
          ),
        ),
      ),
    );
  }
}

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frontend/presentation/bloc/user/user_bloc.dart';
import 'package:frontend/presentation/pages/looking_for/widgets/choice_type_dialog_widget.dart';
import 'package:frontend/presentation/resources/app_consts.dart';
import 'package:frontend/presentation/resources/app_enums.dart';
import 'package:frontend/presentation/router/app_router.dart';
import 'package:frontend/presentation/widgets/base_scaffold.dart';
import 'package:frontend/presentation/widgets/not_alone_title_widget.dart';

@RoutePage()
class LookingForPage extends StatelessWidget {
  final bool isAuthorization;
  const LookingForPage({
    super.key,
    this.isAuthorization = false,
  });

  @override
  Widget build(BuildContext context) {
    return BlocListener<UserBloc, UserState>(
      listener: (context, state) {
        if (state.status == BaseStatus.success) {
          if (isAuthorization) {
            context.router.popAndPush(const StartTalkingRoute());
          } else {
            context.router.back();
          }
        }
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
                    ChoiceTypeDialogWidget(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

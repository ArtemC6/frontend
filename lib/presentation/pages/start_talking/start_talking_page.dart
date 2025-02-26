import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:frontend/presentation/pages/start_talking/widgets/confirmation_dialog_widget.dart';
import 'package:frontend/presentation/resources/app_consts.dart';
import 'package:frontend/presentation/widgets/base_scaffold.dart';
import 'package:frontend/presentation/widgets/not_alone_title_widget.dart';

@RoutePage()
class StartTalkingPage extends StatelessWidget {
  const StartTalkingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
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
                  ConfirmationDialogWidget(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

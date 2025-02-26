import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frontend/core/di.dart';
import 'package:frontend/presentation/pages/auth/bloc/auth_bloc.dart';
import 'package:frontend/presentation/pages/auth/widgets/age_input_widget.dart';
import 'package:frontend/presentation/router/app_router.dart';
import 'package:frontend/presentation/widgets/not_alone_title_widget.dart';
import 'package:frontend/presentation/pages/auth/widgets/name_input_widget.dart';
import 'package:frontend/presentation/pages/auth/widgets/phone_number_input_widget.dart';
import 'package:frontend/presentation/resources/app_consts.dart';
import 'package:frontend/presentation/resources/app_enums.dart';
import 'package:frontend/presentation/widgets/base_scaffold.dart';

@RoutePage()
class AuthPage extends StatefulWidget {
  final void Function(bool isLoggedIn)? onLoginResult;
  const AuthPage({
    super.key,
    this.onLoginResult,
  });

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  final PageController _controller = PageController();
  final animationDuration = const Duration(milliseconds: 300);
  final animationCurve = Curves.easeInOut;

  void nextPage() {
    _controller.nextPage(duration: animationDuration, curve: animationCurve);
  }

  void animateTo(int page) {
    _controller.animateToPage(page,
        duration: animationDuration, curve: animationCurve);
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AuthBloc>(
      create: (context) => AuthBloc(
        userUseCase: di(),
      ),
      child: BlocConsumer<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state.status == BaseStatus.success && _controller.page == 2) {
            context.router.popAndPush(
              LookingForRoute(isAuthorization: true),
            );
            if (widget.onLoginResult != null) {
              widget.onLoginResult!(true);
            }
            return;
          }
          if (state.status == BaseStatus.success) {
            nextPage();
          }
          if (state.status == BaseStatus.failure) {
            animateTo(0);
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(
                  state.error.toString(),
                ),
              ),
            );
          }
        },
        builder: (context, state) {
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
                      controller: _controller,
                      scrollDirection: Axis.vertical,
                      physics: const NeverScrollableScrollPhysics(),
                      children: const [
                        NameInputWidget(),
                        PhoneNumberInputWidget(),
                        AgeInputWidget(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

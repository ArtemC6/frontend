import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:frontend/core/di.dart' as di;
import 'package:frontend/presentation/bloc/user/user_bloc.dart';
import 'package:frontend/presentation/resources/app_consts.dart';
import 'package:frontend/presentation/router/app_router.dart';

void main() {
  di.setup();

}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    final router = AppRouter();
    return BlocProvider(
      lazy: false,
      create: (context) => UserBloc(
        userUseCase: di.di(),
      )..add(
          const UserEvent.fetchUser(),
        ),
      child: MaterialApp.router(
        title: 'Belik',
        theme: AppConsts.appTheme,
        routerConfig: router.config(),
      ),
    );
  }
}

// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

/// generated route for
/// [AuthPage]
class AuthRoute extends PageRouteInfo<AuthRouteArgs> {
  AuthRoute({
    Key? key,
    void Function(bool)? onLoginResult,
    List<PageRouteInfo>? children,
  }) : super(
         AuthRoute.name,
         args: AuthRouteArgs(key: key, onLoginResult: onLoginResult),
         initialChildren: children,
       );

  static const String name = 'AuthRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<AuthRouteArgs>(
        orElse: () => const AuthRouteArgs(),
      );
      return AuthPage(key: args.key, onLoginResult: args.onLoginResult);
    },
  );
}

class AuthRouteArgs {
  const AuthRouteArgs({this.key, this.onLoginResult});

  final Key? key;

  final void Function(bool)? onLoginResult;

  @override
  String toString() {
    return 'AuthRouteArgs{key: $key, onLoginResult: $onLoginResult}';
  }
}

/// generated route for
/// [CallWaitingPage]
class CallWaitingRoute extends PageRouteInfo<void> {
  const CallWaitingRoute({List<PageRouteInfo>? children})
    : super(CallWaitingRoute.name, initialChildren: children);

  static const String name = 'CallWaitingRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const CallWaitingPage();
    },
  );
}

/// generated route for
/// [ChatPage]
class ChatRoute extends PageRouteInfo<void> {
  const ChatRoute({List<PageRouteInfo>? children})
    : super(ChatRoute.name, initialChildren: children);

  static const String name = 'ChatRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const ChatPage();
    },
  );
}

/// generated route for
/// [ChatWrap]
class ChatWrapper extends PageRouteInfo<void> {
  const ChatWrapper({List<PageRouteInfo>? children})
    : super(ChatWrapper.name, initialChildren: children);

  static const String name = 'ChatWrapper';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return WrappedRoute(child: const ChatWrap());
    },
  );
}

/// generated route for
/// [IncomingCallPage]
class IncomingCallRoute extends PageRouteInfo<void> {
  const IncomingCallRoute({List<PageRouteInfo>? children})
    : super(IncomingCallRoute.name, initialChildren: children);

  static const String name = 'IncomingCallRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const IncomingCallPage();
    },
  );
}

/// generated route for
/// [LookingForPage]
class LookingForRoute extends PageRouteInfo<LookingForRouteArgs> {
  LookingForRoute({
    Key? key,
    bool isAuthorization = false,
    List<PageRouteInfo>? children,
  }) : super(
         LookingForRoute.name,
         args: LookingForRouteArgs(key: key, isAuthorization: isAuthorization),
         initialChildren: children,
       );

  static const String name = 'LookingForRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<LookingForRouteArgs>(
        orElse: () => const LookingForRouteArgs(),
      );
      return LookingForPage(
        key: args.key,
        isAuthorization: args.isAuthorization,
      );
    },
  );
}

class LookingForRouteArgs {
  const LookingForRouteArgs({this.key, this.isAuthorization = false});

  final Key? key;

  final bool isAuthorization;

  @override
  String toString() {
    return 'LookingForRouteArgs{key: $key, isAuthorization: $isAuthorization}';
  }
}

/// generated route for
/// [SearchingPage]
class SearchingRoute extends PageRouteInfo<void> {
  const SearchingRoute({List<PageRouteInfo>? children})
    : super(SearchingRoute.name, initialChildren: children);

  static const String name = 'SearchingRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const SearchingPage();
    },
  );
}

/// generated route for
/// [SetupDatePage]
class SetupDateRoute extends PageRouteInfo<void> {
  const SetupDateRoute({List<PageRouteInfo>? children})
    : super(SetupDateRoute.name, initialChildren: children);

  static const String name = 'SetupDateRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const SetupDatePage();
    },
  );
}

/// generated route for
/// [StartChatPage]
class StartChatRoute extends PageRouteInfo<StartChatRouteArgs> {
  StartChatRoute({
    Key? key,
    String? room,
    bool? chatIsExist = false,
    List<PageRouteInfo>? children,
  }) : super(
         StartChatRoute.name,
         args: StartChatRouteArgs(
           key: key,
           room: room,
           chatIsExist: chatIsExist,
         ),
         initialChildren: children,
       );

  static const String name = 'StartChatRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<StartChatRouteArgs>(
        orElse: () => const StartChatRouteArgs(),
      );
      return StartChatPage(
        key: args.key,
        room: args.room,
        chatIsExist: args.chatIsExist,
      );
    },
  );
}

class StartChatRouteArgs {
  const StartChatRouteArgs({this.key, this.room, this.chatIsExist = false});

  final Key? key;

  final String? room;

  final bool? chatIsExist;

  @override
  String toString() {
    return 'StartChatRouteArgs{key: $key, room: $room, chatIsExist: $chatIsExist}';
  }
}

/// generated route for
/// [StartTalkingPage]
class StartTalkingRoute extends PageRouteInfo<void> {
  const StartTalkingRoute({List<PageRouteInfo>? children})
    : super(StartTalkingRoute.name, initialChildren: children);

  static const String name = 'StartTalkingRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const StartTalkingPage();
    },
  );
}

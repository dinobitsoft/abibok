import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:dio/dio.dart';

import 'package:auth/auth.dart';
import 'package:chat/chat.dart';
import 'package:core/core.dart';
import 'package:locale/locale.dart';
import 'package:widgets/widgets.dart';

void main() {
  runApp(const AppProviders());
}

class AppProviders extends StatelessWidget {
  const AppProviders({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(create: (_) => Dio()),

        RepositoryProvider(
          create: (context) => AuthRestClient(context.read<Dio>()),
        ),

        RepositoryProvider(
          create: (context) => ChatRestClient(context.read<Dio>()),
        ),

        RepositoryProvider(create: (_) => WsClient("chat")),
      ],

      child: MultiBlocProvider(
        providers: [
          BlocProvider<AuthBloc>(
            create: (context) =>
                AuthBloc(context.read<AuthRestClient>(), "default", null),
          ),

          BlocProvider<ChatRoomBloc>(
            create: (context) => ChatRoomBloc(
              context.read<ChatRestClient>(),
              context.read<WsClient>(),
              context.read<AuthBloc>(),
            ),
          ),

          BlocProvider<ChatMessageBloc>(
            create: (context) => ChatMessageBloc(
              context.read<ChatRestClient>(),
              context.read<WsClient>(),
              context.read<AuthBloc>(),
              context.read<ChatRoomBloc>(),
            ),
          ),
        ],

        child: const MyApp(),
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Abibok Chat',

      builder: (context, child) => ResponsiveBreakpoints.builder(
        child: child!,
        breakpoints: const [
          Breakpoint(start: 0, end: 450, name: MOBILE),
          Breakpoint(start: 451, end: 800, name: TABLET),
          Breakpoint(start: 801, end: 1920, name: DESKTOP),
        ],
      ),

      theme: ThemeData(primarySwatch: Colors.blue),

      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Chat test")),

      body: Center(
        child: ElevatedButton(
          child: const Text("Open Chat"),

          onPressed: () async {
            final ws = context.read<WsClient>();

            await ws.connect("testApiKey", "user1");

            final room = ChatRoom(chatRoomId: '1', chatRoomName: "Test room");

            showDialog(
              context: context,
              builder: (context) => ChatDialog(room),
            );
          },
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:dio/dio.dart';
import 'package:provider/provider.dart';

import 'package:auth/auth.dart';
import 'package:chat/chat.dart';
import 'package:core/core.dart';
import 'package:locale/locale.dart';
import 'package:widgets/widgets.dart';
import 'package:payment/payment.dart';

void main() {
  runApp(const AppProviders());
}

class AppProviders extends StatelessWidget {
  const AppProviders({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        /// classification для LoginDialog
        Provider<String>(create: (_) => "AppSupport"),

        /// Dio
        FutureProvider<Dio>(
          create: (_) => buildDioClient(),
          initialData: Dio(),
        ),

        /// REST clients
        Provider<AuthRestClient>(
          create: (context) => AuthRestClient(context.read<Dio>()),
        ),

        Provider<ChatRestClient>(
          create: (context) => ChatRestClient(context.read<Dio>()),
        ),

        Provider<WsClient>(create: (_) => WsClient("chat")),
      ],

      child: MultiBlocProvider(
        providers: [
          /// AuthBloc
          BlocProvider(
            create: (context) => AuthBloc(
              context.read<AuthRestClient>(),
              context.read<String>(),
              null,
            )..add(AuthLoad()),
          ),

          /// DataFetchBloc для LoginDialog (планы подписки)
          BlocProvider<DataFetchBloc<ABKServices>>(
            create: (_) => DataFetchBloc<ABKServices>(),
          ),

          /// Chat rooms
          BlocProvider(
            create: (context) => ChatRoomBloc(
              context.read<ChatRestClient>(),
              context.read<WsClient>(),
              context.read<AuthBloc>(),
            ),
          ),

          /// Chat messages
          BlocProvider(
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
      localizationsDelegates: const [CoreLocalizations.delegate],
      supportedLocales: CoreLocalizations.supportedLocales,

      builder: (context, child) => ResponsiveBreakpoints.builder(
        child: child!,
        breakpoints: const [
          Breakpoint(start: 0, end: 450, name: MOBILE),
          Breakpoint(start: 451, end: 800, name: TABLET),
          Breakpoint(start: 801, end: 1920, name: DESKTOP),
        ],
      ),

      theme: ThemeData(primarySwatch: Colors.blue),

      home: const AuthGate(),
    );
  }
}

class AuthGate extends StatelessWidget {
  const AuthGate({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        if (state.status == AuthStatus.loading) {
          return const Scaffold(
            body: Center(child: CircularProgressIndicator()),
          );
        }

        if (state.status == AuthStatus.authenticated) {
          return const ChatHomePage();
        }

        return const LoginPage();
      },
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const LoginDialog();
  }
}

class ChatHomePage extends StatelessWidget {
  const ChatHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final room = ChatRoom(chatRoomId: '1', chatRoomName: "Test room");

    return Scaffold(
      appBar: AppBar(
        title: const Text("Chat"),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () {
              context.read<AuthBloc>().add(AuthLoggedOut());
            },
          ),
        ],
      ),

      body: ChatDialog(room),
    );
  }
}

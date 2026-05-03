import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:locale/l10n/generated/core_localizations.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:dio/dio.dart';
import 'package:provider/provider.dart';

import 'package:auth/auth.dart';
import 'package:chat/chat.dart';

void main() {
  runApp(const AppProviders());
}

class AppProviders extends StatelessWidget {
  const AppProviders({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<String>(create: (_) => "AppSupport"),
        FutureProvider<Dio>(
          create: (_) => buildDioClient(),
          initialData: Dio(),
          catchError: (_, __) => Dio(),
        ),
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
          BlocProvider(
            create: (context) => AuthBloc(
              context.read<AuthRestClient>(),
              context.read<String>(),
              null,
            ),
          ),
          BlocProvider<DataFetchBloc<ABKServices>>(
            create: (_) => DataFetchBloc<ABKServices>(),
          ),
          BlocProvider(
            create: (context) => ChatRoomBloc(
              context.read<ChatRestClient>(),
              context.read<WsClient>(),
              context.read<AuthBloc>(),
            ),
          ),
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
      localizationsDelegates: CoreLocalizations.localizationsDelegates,
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
      home: AuthGate(chatPage: const ChatHomePage()),
    );
  }
}

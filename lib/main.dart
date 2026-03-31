import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:dio/dio.dart';
import 'package:provider/provider.dart';

import 'package:auth/auth.dart';
import 'package:chat/chat.dart';
import 'package:core/core.dart';
import 'package:locale/locale.dart';

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
          /// AuthBloc - без AuthLoad() для работы без бекенда
          BlocProvider(
            create: (context) => AuthBloc(
              context.read<AuthRestClient>(),
              context.read<String>(),
              null,
            ),
            // ❌ Убрали ..add(AuthLoad()) - не делает запрос к бекенду при старте
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
      localizationsDelegates: [
        CoreLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
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

class ChatHomePage extends StatefulWidget {
  const ChatHomePage({super.key});

  @override
  State<ChatHomePage> createState() => _ChatHomePageState();
}

class _ChatHomePageState extends State<ChatHomePage> {
  final _messageController = TextEditingController();
  final List<_DemoChatMessage> _messages = [];

  @override
  void dispose() {
    _messageController.dispose();
    super.dispose();
  }

  void _sendMessage() {
    final text = _messageController.text.trim();
    if (text.isNotEmpty) {
      setState(() {
        _messages.add(
          _DemoChatMessage(text: text, isMe: true, time: DateTime.now()),
        );

        // Авто-ответ
        Future.delayed(const Duration(seconds: 1), () {
          if (mounted) {
            setState(() {
              _messages.add(
                _DemoChatMessage(
                  text: 'Авто-ответ: "$text"',
                  isMe: false,
                  time: DateTime.now(),
                ),
              );
            });
          }
        });

        _messageController.clear();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final localizations = CoreLocalizations.of(context)!;

    return Scaffold(
      appBar: AppBar(
        title: Text(localizations.chat),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () {
              context.read<AuthBloc>().add(AuthLoggedOut());
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: _messages.length,
              itemBuilder: (context, index) {
                final message = _messages[index];
                return Align(
                  alignment: message.isMe
                      ? Alignment.centerRight
                      : Alignment.centerLeft,
                  child: Container(
                    margin: const EdgeInsets.symmetric(vertical: 4),
                    padding: const EdgeInsets.all(12),
                    constraints: BoxConstraints(
                      maxWidth: MediaQuery.of(context).size.width * 0.7,
                    ),
                    decoration: BoxDecoration(
                      color: message.isMe ? Colors.blue : Colors.grey[300],
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          message.text,
                          style: TextStyle(
                            color: message.isMe ? Colors.white : Colors.black87,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          '${message.time.hour.toString().padLeft(2, '0')}:${message.time.minute.toString().padLeft(2, '0')}',
                          style: TextStyle(
                            fontSize: 10,
                            color: message.isMe
                                ? Colors.white70
                                : Colors.black54,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 4,
                  offset: const Offset(0, -2),
                ),
              ],
            ),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _messageController,
                    decoration: InputDecoration(
                      hintText: localizations.messageText,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(24),
                      ),
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 8,
                      ),
                    ),
                    onSubmitted: (_) => _sendMessage(),
                  ),
                ),
                const SizedBox(width: 8),
                IconButton(
                  onPressed: _sendMessage,
                  icon: const Icon(Icons.send),
                  color: Theme.of(context).primaryColor,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _DemoChatMessage {
  final String text;
  final bool isMe;
  final DateTime time;

  _DemoChatMessage({
    required this.text,
    required this.isMe,
    required this.time,
  });
}

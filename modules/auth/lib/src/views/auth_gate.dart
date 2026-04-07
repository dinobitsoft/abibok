import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../blocs/blocs.dart';
import '../views/views.dart';

/// Экран-шлюз: показывает загрузку, логин или чат в зависимости от статуса аутентификации.
/// [chatPage] — виджет главного экрана (обычно из модуля chat).
class AuthGate extends StatelessWidget {
  final Widget chatPage;

  const AuthGate({super.key, required this.chatPage});

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
          return chatPage;
        }
        return const LoginDialog();
      },
    );
  }
}

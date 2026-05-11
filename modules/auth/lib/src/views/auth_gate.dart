import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../blocs/blocs.dart';
import '../views/views.dart';

/// Gate screen: shows loading, login, or chat depending on authentication status.
/// [chatPage] — main screen widget (usually from the chat module).
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

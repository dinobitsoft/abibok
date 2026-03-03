import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:locale/l10n/generated/core_localizations.dart' show CoreLocalizations;
import 'package:widgets/widgets.dart';

import '../authenticate.dart'
    show AuthBloc, AuthResetPassword, AuthState, AuthStatus;

class SendResetPasswordDialog extends StatefulWidget {
  const SendResetPasswordDialog(this.username, {super.key});

  final String username;

  @override
  State<SendResetPasswordDialog> createState() =>
      _SendResetPasswordDialogState();
}

class _SendResetPasswordDialogState extends State<SendResetPasswordDialog> {
  late String username;
  late AuthBloc _authBloc;
  final _formKeyResetPassword = GlobalKey<FormState>();
  final _usernameController = TextEditingController();
  CoreLocalizations? _localizations;

  @override
  void initState() {
    super.initState();
    _authBloc = context.read<AuthBloc>();
    _usernameController.text =
        _authBloc.state.authenticate?.user?.loginName ??
        (kReleaseMode ? '' : 'test@example.com');
  }

  @override
  Widget build(BuildContext context) {
    _localizations = CoreLocalizations.of(context);
    return BlocConsumer<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state.status == AuthStatus.unAuthenticated) {
          Navigator.pop(context);
        }
      },
      builder: (context, state) {
        if (state.status == AuthStatus.loading) {
          return const LoadingIndicator();
        } else {
          return Dialog(
            insetPadding: const EdgeInsets.all(10),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: popUp(
              height: 300,
              context: context,
              title: _localizations!.sendNewPassword,
              child: Form(
                key: _formKeyResetPassword,
                child: SingleChildScrollView(
                  key: const Key('listView'),
                  child: Column(
                    children: [
                      const SizedBox(height: 20),
                      TextFormField(
                        controller: _usernameController,
                        autofocus: true,
                        decoration: InputDecoration(
                          labelText: _localizations!.email,
                        ),
                      ),
                      const SizedBox(height: 20),
                      OutlinedButton(
                        child: Text(_localizations!.ok),
                        onPressed: () {
                          _authBloc.add(
                            AuthResetPassword(
                              username: _usernameController.text,
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        }
      },
    );
  }
}

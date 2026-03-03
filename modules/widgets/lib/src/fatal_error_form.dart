import 'package:flutter/material.dart';
import 'package:locale/locale.dart';

class FatalErrorForm extends StatelessWidget {
  final String message;
  final String? route;
  final String buttonText;

  const FatalErrorForm({
    super.key,
    required this.message,
    this.route,
    this.buttonText = 'Restart',
  });
  @override
  Widget build(BuildContext context) {
    final localizations = CoreLocalizations.of(context)!;
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: 300,
            height: 200,
            child: Text(
              message,
              style: const TextStyle(color: Colors.red, fontSize: 15),
            ),
          ),
          OutlinedButton(
            child: Text(localizations.restart),
            onPressed: () => Navigator.pushNamed(context, '/'),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:shopping_app/delete_this_after_merge/theming/colors.dart';

class ErrorDialog extends StatelessWidget {
  final String errorMessage;

  const ErrorDialog({super.key, required this.errorMessage});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Login Error'),
      content: Text(errorMessage),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: const Text('OK', style: TextStyle(color: ColorsManager.pink)),
        ),
      ],
    );
  }
}

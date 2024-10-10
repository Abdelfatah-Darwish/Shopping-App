import 'package:flutter/material.dart';
import 'package:shopping_app/delete_this_after_merge/theming/colors.dart';

class ErrorDialog extends StatelessWidget {
  final String errorMessage;
  final String titleErrorMessage;
  const ErrorDialog(
      {super.key, required this.errorMessage, required this.titleErrorMessage});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(titleErrorMessage),
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

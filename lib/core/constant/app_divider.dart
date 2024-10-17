import 'package:flutter/material.dart';
import 'package:shopping_app/core/theming/colors.dart';

class AppDivider extends StatelessWidget {
  const AppDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Divider(
      thickness: 1,
      color: Color.fromARGB(235, 245, 244, 244),
      height: 20,
    );
  }
}

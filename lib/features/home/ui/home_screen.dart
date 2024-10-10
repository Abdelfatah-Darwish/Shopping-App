import 'package:flutter/material.dart';
import 'package:shopping_app/core/helpers/extensions.dart';
import 'package:shopping_app/core/routing/routes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back), // Back arrow icon
          onPressed: () {
            context.pushReplacementNamed(
                Routes.loginScreen); // Pops the current screen
          },
        ),
        title: const Text("Home"),
      ),
      body: const Center(
        child: Text("HomeScreen"),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:shopping_app/core/routing/routes.dart';
import 'package:shopping_app/features/authentication/ui/authentication_screen.dart';
import 'package:shopping_app/features/login/ui/login_screen.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    //this arguments to be passed in any screen like this ( arguments as ClassName )
    // final arguments = settings.arguments;

    switch (settings.name) {
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (_) => const LoginScreen(),
        );
      case Routes.authenticationScreen:
        return MaterialPageRoute(
          builder: (_) => const AuthenticationScreen(),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}

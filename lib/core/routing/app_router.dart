import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:shopping_app/core/routing/routes.dart';
import 'package:shopping_app/features/authentication/ui/authentication_screen.dart';
import 'package:shopping_app/features/home/ui/home_screen.dart';
import 'package:shopping_app/features/login/ui/login_screen.dart';
import 'package:shopping_app/features/sign_up/ui/sign_up_screen.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    //this arguments to be passed in any screen like this ( arguments as ClassName )
   // final arguments = settings.arguments;

    switch (settings.name) {
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (_) => const LoginScreen(),
        );
      case Routes.signUpScreen:
        return MaterialPageRoute(
          builder: (_) => const SignUpScreen(),
        );
      case Routes.homeScreen:
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(),
        );
      case Routes.authenticationScreen:
        return MaterialPageRoute(
          builder: (_) => const AuthenticationScreen(),
        );
      default:
        return null;
    }
=======

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/loginScreen':
        return MaterialPageRoute(builder: (_) => const Placeholder());
      case '/':
        return MaterialPageRoute(builder: (_) => const Placeholder());
      default:
        //  leave the default route when app crashed this route will work.
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                      child: Text('No route defined for ${settings.name}')),
                ));
    }
    return null;
>>>>>>> Nourane/branch_1
  }
}

import 'package:flutter/material.dart';

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
  }
}

import 'package:flutter/material.dart';
import 'package:shopping_app/core/routing/routes.dart';
import 'package:shopping_app/features/authentication/ui/authentication_screen.dart';
import 'package:shopping_app/features/cart/ui/cart_screen.dart';
import 'package:shopping_app/features/checkout/ui/checkout_screen.dart';
import 'package:shopping_app/features/home/ui/screen/home_screen.dart';
import 'package:shopping_app/features/login/ui/login_screen.dart';
import 'package:shopping_app/features/profile/ui/screen/profile_screen.dart';
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
      case Routes.profileScreen:
        return MaterialPageRoute(
          builder: (_) => const ProfileScreen(),
        );
      case Routes.cartScreen:
        return MaterialPageRoute(
          builder: (_) => const CartScreen(),
        );

      case Routes.checkoutScreen:
        return MaterialPageRoute(
          builder: (_) => const CheckoutScreen(),
        );
      case Routes.authenticationScreen:
        return MaterialPageRoute(
          builder: (_) => const AuthenticationScreen(),
        );
      default:
        return null;
    }
  }
}

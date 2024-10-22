import 'package:flutter/material.dart';
import 'package:shopping_app/core/routing/routes.dart';
import 'package:shopping_app/features/add_new_products/ui/screen/add%20_product%20_variant.dart';
import 'package:shopping_app/features/add_new_products/ui/screen/add_product_screen.dart';
import 'package:shopping_app/features/authentication/ui/authentication_screen.dart';
import 'package:shopping_app/features/home/ui/home_screen.dart';
import 'package:shopping_app/features/home/ui/screen/home_screen.dart';
import 'package:shopping_app/features/login/ui/login_screen.dart';
import 'package:shopping_app/features/product_details/screens/product_details_screen.dart';
import 'package:shopping_app/features/products/ui/screen/wishlist_screen.dart';
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
      case Routes.authenticationScreen:
        return MaterialPageRoute(
          builder: (_) => const AuthenticationScreen(),
        );
      case Routes.addProduct:
        return MaterialPageRoute(
          builder: (_) => const AddProductScreen(),
        );
      case Routes.AddProductVariantScreen:
        return MaterialPageRoute(
          builder: (_) => const AddProductVariant(),
        );
      case Routes.wishListScreen:
        return MaterialPageRoute(
          builder: (_) => const WishListScreen(),
        );
      case Routes.detailsProductScreen:
        var product;
        return MaterialPageRoute(
          builder: (_) => ProductDetailsScreen(
            product: product,
          ),
        );
      default:
        return null;
    }
  }
}

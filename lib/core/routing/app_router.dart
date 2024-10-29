import 'package:flutter/material.dart';
import 'package:shopping_app/core/routing/routes.dart';
import 'package:shopping_app/features/add_new_products/ui/screen/add%20_product%20_variant.dart';
import 'package:shopping_app/features/add_new_products/ui/screen/add_product_screen.dart';
import 'package:shopping_app/features/authentication/ui/authentication_screen.dart';
import 'package:shopping_app/features/cart/ui/cart_screen.dart';
import 'package:shopping_app/features/category/ui/screen/category_screen.dart';
import 'package:shopping_app/features/dark_light/ui/screen/dark_light.dart';
import 'package:shopping_app/features/checkout/ui/screens/checkout_done_screen.dart';
import 'package:shopping_app/features/checkout/ui/screens/checkout_screen.dart';
import 'package:shopping_app/features/home/ui/screen/home_screen.dart';
import 'package:shopping_app/features/home/ui/screen/notification_screen.dart';
import 'package:shopping_app/features/login/ui/login_screen.dart';
import 'package:shopping_app/features/product_details/screens/product_details_screen.dart';
import 'package:shopping_app/features/profile/ui/screen/profile_screen.dart';
import 'package:shopping_app/features/sign_up/ui/sign_up_screen.dart';
import 'package:shopping_app/features/wishlist/ui/wishlist_screen.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    //this arguments to be passed in any screen like this ( arguments as ClassName )

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
          builder: (_) => HomeScreen(),
        );
      case Routes.profileScreen:
        return MaterialPageRoute(
          builder: (_) => const ProfileScreen(),
        );
      case Routes.cartScreen:
        return MaterialPageRoute(
          builder: (_) => const CartScreen(),
        );
      case Routes.notificationScreen:
        return MaterialPageRoute(
          builder: (_) => const NotificationScreen(),
        );
      case Routes.checkoutScreen:
        return MaterialPageRoute(
          builder: (_) => const CheckoutScreen(),
        );

      case Routes.checkoutDoneScreen:
        return MaterialPageRoute(
          builder: (_) => const CheckoutDoneScreen(),
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
      case Routes.categoryScreen:
        return MaterialPageRoute(
          builder: (_) => const CategoryScreen(),
        );
      case Routes.wishListScreen:
        return MaterialPageRoute(
          builder: (_) => const WishListScreen(),
        );
      case Routes.dark_light:
        return MaterialPageRoute(
          builder: (_) => const DarkLight(),
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

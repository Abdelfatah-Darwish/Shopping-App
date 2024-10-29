import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopping_app/core/helpers/extensions.dart';
import 'package:shopping_app/core/routing/routes.dart';
import 'package:shopping_app/core/theming/text_styles.dart';
import 'package:shopping_app/core/widgets/spacing.dart';
import 'package:shopping_app/core/widgets/text_button.dart';
import 'package:shopping_app/features/cart/ui/widgets/cart_app_bar.dart';
import 'package:shopping_app/features/cart/ui/widgets/cart_items_list.dart';
import 'package:shopping_app/features/nav_bar/logic/nav_bar_cubit.dart';
import 'package:shopping_app/features/nav_bar/ui/screens/nav_bar_screen.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavBar(),
      body: SafeArea(
          child: Padding(
        padding:
            const EdgeInsets.only(left: 24, right: 24, top: 18, bottom: 19),
        child: Column(
          children: [
            const CartAppBar(),
            verticalSpace(16),
            const Expanded(child: CartItemsList()),
            verticalSpace(20),
            AppTextButton(
              verticalPadding: 2,
              borderRadius: 22,
              buttonHeight: 48,
              buttonText: 'Checkout',
              textStyle: TextStyles.font20WhiteSemiBold,
              onPressed: () {
                context.pushReplacementNamed(Routes.checkoutScreen);
              },
            ),
          ],
        ),
      )),
    );
  }
}

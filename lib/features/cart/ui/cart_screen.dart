import 'package:flutter/material.dart';
import 'package:shopping_app/core/helpers/extensions.dart';
import 'package:shopping_app/core/routing/routes.dart';
import 'package:shopping_app/core/theming/text_styles.dart';
import 'package:shopping_app/core/widgets/spacing.dart';
import 'package:shopping_app/core/widgets/text_button.dart';
import 'package:shopping_app/features/cart/ui/widgets/cart_app_bar.dart';
import 'package:shopping_app/features/cart/ui/widgets/cart_items_list.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding:
              const EdgeInsets.only(left: 24, right: 24, top: 18, bottom: 44),
          child: Column(
            children: [
              const CartAppBar(),
              verticalSpace(20),
              const CartItemsList(),
              verticalSpace(12),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'TOTAL',
                    style: TextStyles.font15BlackSemiBold,
                  ),
                  Text(
                    '1,050 L.E',
                    style: TextStyles.font16BlackRegular,
                  ),
                ],
              ),
              verticalSpace(24),
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
        ),
      )),
    );
  }
}

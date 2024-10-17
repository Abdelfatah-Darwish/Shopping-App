import 'package:flutter/material.dart';
import 'package:shopping_app/core/widgets/spacing.dart';
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
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              const CartAppBar(),
              verticalSpace(20),
              const CartItemsList(),
            ],
          ),
        ),
      )),
    );
  }
}

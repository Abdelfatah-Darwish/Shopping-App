import 'package:flutter/material.dart';
import 'package:shopping_app/features/cart/ui/widgets/cart_app_bar.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          CartAppBar(),
        ],
      )),
    );
  }
}

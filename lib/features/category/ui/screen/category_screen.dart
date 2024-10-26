import 'package:flutter/material.dart';
import 'package:shopping_app/core/widgets/spacing.dart';
import 'package:shopping_app/features/category/ui/widgets/build_product_category.dart';
import 'package:shopping_app/features/nav_bar/ui/screens/nav_bar_screen.dart';
import 'package:shopping_app/features/products/ui/widgets/product_widget.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: NavBar(),
        body: Padding(
          padding: const EdgeInsets.only(top: 40),
          child: SingleChildScrollView(
            child: Column(
              children: [
                BuildProductCategory(),
                verticalSpace(10),
                ProductScreen()
              ],
            ),
          ),
        ));
  }
}

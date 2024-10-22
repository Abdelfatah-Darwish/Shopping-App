import 'package:flutter/material.dart';
import 'package:shopping_app/core/helpers/extensions.dart';
import 'package:shopping_app/core/routing/routes.dart';
import 'package:shopping_app/core/theming/colors.dart';
import 'package:shopping_app/core/widgets/spacing.dart';
import 'package:shopping_app/features/category/ui/widgets/build_product_category.dart';
import 'package:shopping_app/features/home/ui/widgets/banner_Ads.dart';
import 'package:shopping_app/features/home/ui/widgets/custom_search_bar.dart';
import 'package:shopping_app/features/home/ui/widgets/home_top_bar.dart';
import 'package:shopping_app/features/nav_bar/ui/screens/nav_bar_screen.dart';

import 'package:shopping_app/features/products/ui/widgets/product_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const NavBar(),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          margin: const EdgeInsets.fromLTRB(
            20.0,
            16.0,
            20.0,
            28.0,
          ),
          child: ListView(
            children: [
              verticalSpace(4),
              const HomeTopBar(),
              verticalSpace(10),
              const CustomSearchBar(),
              verticalSpace(4),
              const AdBanner(),
              verticalSpace(15),
              const BuildProductCategory(),
              verticalSpace(5),
              const ProductScreen(),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.pushNamed(Routes.addProduct);
        },
        backgroundColor: Colors.pink,
        child: const Icon(
          Icons.add,
          color: ColorsManager.white,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}

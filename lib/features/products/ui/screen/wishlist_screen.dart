import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shopping_app/core/theming/colors.dart';
import 'package:shopping_app/core/theming/text_styles.dart';
import 'package:shopping_app/core/widgets/spacing.dart';
import 'package:shopping_app/features/category/ui/widgets/build_product_category.dart';
import 'package:shopping_app/features/nav_bar/ui/screens/nav_bar_screen.dart';
import 'package:shopping_app/features/products/ui/widgets/product_widget.dart';

class WishListScreen extends StatelessWidget {
  const WishListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const NavBar(),
      backgroundColor: ColorsManager.white,
      appBar: AppBar(
        backgroundColor: ColorsManager.white,
        leading: IconButton(
          icon: Image.asset(
            "assets/images/next.png",
            width: 24.w,
            height: 24.h,
          ),
          onPressed: () {},
        ),
        title: Text(
          "WishList",
          style: TextStyles.font15BlackSemiBold,
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          verticalSpace(10),
          const BuildProductCategory(),
          verticalSpace(10),
          ProductScreen(),
        ],
      ),
    );
  }
}

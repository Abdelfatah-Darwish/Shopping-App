import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shopping_app/core/helpers/extensions.dart';
import 'package:shopping_app/core/routing/routes.dart';
import 'package:shopping_app/core/theming/colors.dart';
import 'package:shopping_app/core/theming/text_styles.dart';
import 'package:shopping_app/core/widgets/spacing.dart';
import 'package:shopping_app/features/category/ui/widgets/build_product_category.dart';
import 'package:shopping_app/features/nav_bar/logic/nav_bar_cubit.dart';
import 'package:shopping_app/features/nav_bar/ui/screens/nav_bar_screen.dart';
import 'package:shopping_app/features/wishlist/ui/widgets/grid_for_product.dart';

class WishListScreen extends StatelessWidget {
  const WishListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const NavBar(),
      appBar: AppBar(
        leading: IconButton(
          icon: Image.asset(
            "assets/images/next.png",
            width: 24.w,
            height: 24.h,
          ),
          onPressed: () {
            context.pushReplacementNamed(Routes.homeScreen);
            context.read<NavBarCubit>().updateIndex(0); // Reset to Home tab
          },
        ),
        title: Text(
          "WishList",
          style: TextStyles.font18blackSemiBold,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            verticalSpace(10),
            const BuildProductCategory(),
            verticalSpace(10),
            const GridForProduct(),
          ],
        ),
      ),
    );
  }
}

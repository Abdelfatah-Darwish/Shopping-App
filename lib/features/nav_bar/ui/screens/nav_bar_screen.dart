import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:shopping_app/core/helpers/extensions.dart';
import 'package:shopping_app/core/routing/routes.dart';
import 'package:shopping_app/core/theming/colors.dart';
import 'package:shopping_app/features/nav_bar/logic/nav_bar_cubit.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavBarCubit, int>(
      builder: (context, selectedIndex) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 12.0),
          child: GNav(
            onTabChange: (index) {
              context.read<NavBarCubit>().updateIndex(index);
              switch (index) {
                case 0:
                  context.pushReplacementNamed(Routes.homeScreen);
                  break;
                case 1:

                  // context.pushReplacementNamed(Routes.categoryScreen);
                  break;
                case 2:
                  context.pushReplacementNamed(Routes.cartScreen);
                  break;
                case 3:
                  context.pushReplacementNamed(Routes.wishListScreen);
                  break;
              }
            },
            backgroundColor: ColorsManager.white,
            color: ColorsManager.black,
            activeColor: ColorsManager.pink,
            tabBackgroundColor: ColorsManager.lightPink,
            padding: const EdgeInsets.all(16),
            gap: 8,
            selectedIndex: selectedIndex,
            tabs: [
              GButton(
                icon: Icons.home,
                leading: Image.asset(
                  "assets/images/home_nav.png",
                  width: 20.w,
                  height: 20.h,
                  color: selectedIndex == 0
                      ? ColorsManager.pink
                      : ColorsManager.black,
                ),
                text: 'Home',
              ),
              GButton(
                icon: Icons.list_alt,
                leading: Image.asset(
                  "assets/images/category.png",
                  width: 20.w,
                  height: 20.h,
                  color: selectedIndex == 1
                      ? ColorsManager.pink
                      : ColorsManager.black,
                ),
                text: 'Categories',
              ),
              GButton(
                icon: Icons.category,
                leading: Image.asset(
                  "assets/images/cart_nav.png",
                  width: 20.w,
                  height: 20.h,
                  color: selectedIndex == 2
                      ? ColorsManager.pink
                      : ColorsManager.black,
                ),
                text: 'Cart',
              ),
              GButton(
                icon: Icons.favorite,
                leading: Image.asset(
                  "assets/images/fav_nav.png",
                  width: 20.w,
                  height: 20.h,
                  color: selectedIndex == 3
                      ? ColorsManager.pink
                      : ColorsManager.black,
                ),
                text: 'Wishlist',
              ),
            ],
          ),
        );
      },
    );
  }
}

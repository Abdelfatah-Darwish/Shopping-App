import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:shopping_app/core/theming/colors.dart';
import 'package:shopping_app/features/nav_bar/logic/nav_bar_cubit.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  // to control in color of image when active or not
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NavBarCubit(),
      child: BlocBuilder<NavBarCubit, int>(
        builder: (context, state) {
          return Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 8.0, vertical: 12.0),
            child: GNav(
                onTabChange: (index) {
                  //  index start from zero , this func to nav between screens which related to Navbar
                  context.read<NavBarCubit>().updateIndex(index);
                },
                backgroundColor: ColorsManager.white,
                color: ColorsManager.black,
                activeColor: ColorsManager.pink,
                tabBackgroundColor: ColorsManager.lightPink,
                padding: EdgeInsets.all(16),
                gap: 8,
                tabs: [
                  GButton(
                    icon: Icons.home,
                    leading: Image.asset(
                      "assets/images/home_nav.png",
                      width: 20,
                      height: 20,
                      color:
                          BlocProvider.of<NavBarCubit>(context).selectedIndex ==
                                  0
                              ? ColorsManager.pink
                              : ColorsManager.black,
                    ),
                    text: 'Home',
                  ),
                  GButton(
                    icon: Icons.list_alt,
                    leading: Image.asset(
                      "assets/images/category.png",
                      width: 20,
                      height: 20,
                      color:
                          BlocProvider.of<NavBarCubit>(context).selectedIndex ==
                                  1
                              ? ColorsManager.pink
                              : ColorsManager.black,
                    ),
                    text: 'Categories',
                  ),
                  GButton(
                    icon: Icons.category,
                    leading: Image.asset(
                      "assets/images/cart_nav.png",
                      width: 24,
                      height: 24,
                      color:
                          BlocProvider.of<NavBarCubit>(context).selectedIndex ==
                                  2
                              ? ColorsManager.pink
                              : ColorsManager.black,
                    ),
                    text: 'Cart',
                  ),
                  GButton(
                    icon: Icons.favorite,
                    leading: Image.asset(
                      "assets/images/fav_nav.png",
                      width: 24,
                      height: 24,
                      color:
                          BlocProvider.of<NavBarCubit>(context).selectedIndex ==
                                  3
                              ? ColorsManager.pink
                              : ColorsManager.black,
                    ),
                    text: 'Wishlist',
                  ),
                ]),
          );
        },
      ),
    );
  }
}

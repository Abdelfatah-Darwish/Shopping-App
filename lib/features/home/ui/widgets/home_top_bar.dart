import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shopping_app/core/helpers/extensions.dart';
import 'package:shopping_app/core/routing/routes.dart';
import 'package:shopping_app/core/theming/colors.dart';
import 'package:shopping_app/core/widgets/spacing.dart';

class HomeTopBar extends StatelessWidget {
  const HomeTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
                context.pushReplacementNamed(Routes.profileScreen);
              },
              child: const CircleAvatar(
                radius: 24.0,
                backgroundColor: ColorsManager.pink,
              ),
            ),
            horizontalSpace(8.0),
            const Text("Welcome, Dalida"),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            IconButton(
              onPressed: () {},
              icon: Image.asset(
                "assets/images/notification.png",
                width: 24.w,
                height: 24.h,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Image.asset(
                "assets/images/search_icon.png",
                width: 24.w,
                height: 24.h,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

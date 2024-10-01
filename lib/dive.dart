import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shopping_app/core/theming/colors.dart';
import 'package:shopping_app/core/widgets/spacing.dart';
import 'package:shopping_app/features/nav_bar/ui/screens/nav_bar_screen.dart';
import 'package:shopping_app/features/sign_up/ui/widgets/already_have_account.dart';

class Dive extends StatelessWidget {
  const Dive({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        child: MaterialApp(
            title: 'Dive',
            theme: ThemeData(
              primaryColor: ColorsManager.pink,
              scaffoldBackgroundColor: ColorsManager.white,
            ),
            debugShowCheckedModeBanner: false,
            home: Placeholder()));
  }
}

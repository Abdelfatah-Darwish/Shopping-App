import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
<<<<<<< HEAD
import 'package:shopping_app/core/routing/app_router.dart';
import 'package:shopping_app/core/routing/routes.dart';

class Dive extends StatelessWidget {
  final AppRouter appRouter;
  const Dive({super.key, required this.appRouter});
=======
import 'package:shopping_app/core/theming/colors.dart';
import 'package:shopping_app/core/widgets/spacing.dart';
import 'package:shopping_app/features/home/ui/screen/home_screen.dart';
import 'package:shopping_app/features/nav_bar/ui/screens/nav_bar_screen.dart';
import 'package:shopping_app/features/profile/ui/screen/profile_screen.dart';
import 'package:shopping_app/features/sign_up/ui/widgets/already_have_account.dart';

class Dive extends StatelessWidget {
  const Dive({super.key});
>>>>>>> Nourane/branch_1

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        child: MaterialApp(
<<<<<<< HEAD
          title: 'Dive App',
          theme: ThemeData(
            primaryColor: const Color.fromRGBO(255, 23, 104, 1),
            scaffoldBackgroundColor: const Color(0xFFFCFCFC),
          ),
          debugShowCheckedModeBanner: false,
          initialRoute: Routes.loginScreen,
          onGenerateRoute: appRouter.generateRoute,
        ));
  }
}
=======
            title: 'Dive',
            theme: ThemeData(
              primaryColor: ColorsManager.pink,
              scaffoldBackgroundColor: ColorsManager.white,
            ),
            debugShowCheckedModeBanner: false,
            home: const ProfileScreen()));
  }
}
//new commit_22
>>>>>>> Nourane/branch_1

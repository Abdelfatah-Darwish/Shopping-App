import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shopping_app/core/routing/app_router.dart';
import 'package:shopping_app/core/routing/routes.dart';
import 'package:shopping_app/core/theming/colors.dart';
import 'package:shopping_app/delete_this_after_merge/theming/text_styles.dart';
import 'package:shopping_app/features/dark_light/data/models/enums/theme_state.dart';
import 'package:shopping_app/features/dark_light/logic/cubit/app_theme_cubit.dart';
import 'package:shopping_app/features/nav_bar/logic/nav_bar_cubit.dart';

class Dive extends StatelessWidget {
  final AppRouter appRouter;
  const Dive({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        child: BlocProvider(
          create: (context) => AppThemeCubit()..changeTheme(ThemeState.Initial),
          child: BlocBuilder<AppThemeCubit, AppThemeState>(
            builder: (context, state) {
              if (state is AppThemeLight) {
                return BlocProvider(
                    create: (_) => NavBarCubit(),
                    child: MaterialApp(
                      title: 'Dive App',
                      theme: ThemeData.light().copyWith(
                        scaffoldBackgroundColor: ColorsManager.white,
                        textTheme: const TextTheme(
                          bodyLarge: TextStyle(color: ColorsManager.black),
                          bodyMedium: TextStyle(color: ColorsManager.lightGrey),
                        ),
                      ),
                      debugShowCheckedModeBanner: false,
                      initialRoute: Routes.homeScreen,
                      onGenerateRoute: appRouter.generateRoute,
                    ));
              } else if (state is AppThemeDark) {
                return BlocProvider(
                    create: (_) => NavBarCubit(),
                    child: MaterialApp(
                      title: 'Dive App',
                      theme: ThemeData.dark().copyWith(
                        scaffoldBackgroundColor: ColorsManager.black,
                        textTheme: const TextTheme(
                          bodyLarge: TextStyle(color: Colors.white),
                          bodyMedium: TextStyle(color: ColorsManager.lightGrey),
                        ),
                      ),
                      debugShowCheckedModeBanner: false,
                      initialRoute: Routes.homeScreen,
                      onGenerateRoute: appRouter.generateRoute,
                    ));
              }
              return BlocProvider(
                  create: (_) => NavBarCubit(),
                  child: MaterialApp(
                    title: 'Dive App',
                    theme: ThemeData(
                      primaryColor: const Color.fromRGBO(255, 23, 104, 1),
                      scaffoldBackgroundColor: const Color(0xFFFCFCFC),
                    ),
                    debugShowCheckedModeBanner: false,
                    initialRoute: Routes.homeScreen,
                    onGenerateRoute: appRouter.generateRoute,
                  ));
            },
          ),
        ));
  }
}

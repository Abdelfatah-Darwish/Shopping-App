import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shopping_app/core/routing/app_router.dart';
import 'package:shopping_app/core/routing/routes.dart';

class Dive extends StatefulWidget {
  final AppRouter appRouter;
  const Dive({super.key, required this.appRouter});

  @override
  State<Dive> createState() => _DiveState();
}

class _DiveState extends State<Dive> {
  User? user;

  @override
  void initState() {
    super.initState();
    user = FirebaseAuth.instance.currentUser;
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        child: MaterialApp(
          title: 'Dive App',
          theme: ThemeData(
            primaryColor: const Color.fromRGBO(255, 23, 104, 1),
            scaffoldBackgroundColor: const Color(0xFFFCFCFC),
          ),
          debugShowCheckedModeBanner: false,
          initialRoute:
              user == null ? (Routes.loginScreen) : (Routes.homeScreen),
          onGenerateRoute: widget.appRouter.generateRoute,
        ));
  }
}

import 'package:flutter/material.dart';
import 'package:shopping_app/core/routing/app_router.dart';
import 'package:shopping_app/dive.dart';



void main()  {
  // await Firebase.initializeApp(
  //   options: DefaultFirebaseOptions.currentPlatform,
  // );
  runApp(Dive(
    appRouter: AppRouter(),
  ));
}

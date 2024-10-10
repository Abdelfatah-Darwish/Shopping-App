import 'package:flutter/material.dart';
import 'package:shopping_app/core/routing/app_router.dart';
import 'package:shopping_app/dive.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
void main() async{
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
);
  runApp(Dive(
    appRouter: AppRouter(),
  ));
}

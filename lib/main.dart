import 'package:firebase_core/firebase_core.dart';
import 'package:shopping_app/core/DI/dependency_injection.dart';
import 'firebase_options.dart';
import 'package:flutter/material.dart';
import 'package:shopping_app/core/routing/app_router.dart';
import 'package:shopping_app/dive.dart';

void main() async {
  setupGetIt();
  WidgetsFlutterBinding.ensureInitialized(); // Ensure Flutter is initialized
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(Dive(
    appRouter: AppRouter(),
  ));
}

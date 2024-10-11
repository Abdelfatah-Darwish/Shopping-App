<<<<<<< HEAD
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:flutter/material.dart';
import 'package:shopping_app/core/routing/app_router.dart';
import 'package:shopping_app/dive.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized(); // Ensure Flutter is initialized
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(Dive(
    appRouter: AppRouter(),
  ));
}



//new commit
=======
import 'package:flutter/material.dart';
import 'package:shopping_app/dive.dart';

void main() {
  runApp(const Dive());
}
>>>>>>> Nourane/branch_1

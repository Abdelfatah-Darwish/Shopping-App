import 'package:dio/dio.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shopping_app/core/constant/strings.dart';
import 'package:shopping_app/core/networking/api/product_services.dart';
import 'package:shopping_app/features/nav_bar/logic/nav_bar_cubit.dart';
import 'package:shopping_app/core/DI/dependency_injection.dart';
import 'firebase_options.dart';
import 'package:flutter/material.dart';
import 'package:shopping_app/core/routing/app_router.dart';
import 'package:shopping_app/dive.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupGetIt();
  WidgetsFlutterBinding.ensureInitialized(); // Ensure Flutter is initialized
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

//  dark/light
  sharedPreferences = await SharedPreferences.getInstance();

  runApp(Dive(
    appRouter: AppRouter(),
  ));
}
// BlocProvider(
      // create: (_) => NavBarCubit(),
      // child: 
      //
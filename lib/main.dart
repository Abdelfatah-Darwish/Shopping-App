import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopping_app/features/nav_bar/logic/nav_bar_cubit.dart';
import 'firebase_options.dart';
import 'package:flutter/material.dart';
import 'package:shopping_app/core/routing/app_router.dart';
import 'package:shopping_app/dive.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(BlocProvider(
      create: (_) => NavBarCubit(),
      child: Dive(
        appRouter: AppRouter(),
      )));
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:shopping_app/core/routing/routes.dart'; // Make sure to import your routing
import 'package:shopping_app/core/theming/text_styles.dart';

class CheckoutDoneScreen extends StatefulWidget {
  const CheckoutDoneScreen({super.key});

  @override
  State<CheckoutDoneScreen> createState() => _CheckoutDoneScreenState();
}

class _CheckoutDoneScreenState extends State<CheckoutDoneScreen> {
  @override
  void initState() {
    super.initState();

    // After 30 seconds, navigate back to the home screen
    Future.delayed(const Duration(milliseconds: 1890), () {
      Navigator.pushReplacementNamed(context, Routes.homeScreen);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Checkout Done',
            style: TextStyles.font20BlackSemiBold,
          ),
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Lottie.asset(
            'assets/images/check_out_done.json',
            height: 200.h,
            width: 200.w,
          ),
        ),
      ),
    );
  }
}

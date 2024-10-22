import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:shopping_app/core/theming/text_styles.dart';

class CheckoutDoneScreen extends StatelessWidget {
  const CheckoutDoneScreen({super.key});

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

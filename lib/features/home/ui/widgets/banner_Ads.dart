import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AdBanner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: 175.h,
        padding: EdgeInsets.symmetric(
          horizontal: 16.w,
          vertical: 16.h,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24.0),
          image: const DecorationImage(
            image: AssetImage('assets/images/adBanner.png'),
            fit: BoxFit.cover,
          ),
        ));
  }
}

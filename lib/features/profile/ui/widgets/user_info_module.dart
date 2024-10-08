import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shopping_app/core/theming/text_styles.dart';

class UserInFormationSection extends StatelessWidget {
  const UserInFormationSection(
      {super.key,
      required this.title,
      required this.AssetsPath,
      this.subtitle});
  final String title;
  final String AssetsPath;
  final Widget? subtitle;

  @override
  Widget build(BuildContext context) {
    return ListTile(
        leading: Image.asset(
          'assets/images/${AssetsPath}',
          width: 18.w,
          height: 18.h,
        ),
        title: Text(
          title,
          style: TextStyles.font13blackSemiBold.copyWith(color: Colors.black),
        ),
        subtitle: subtitle,
        trailing: IconButton(
            icon: Image.asset(
              'assets/images/arrow-right.png',
              width: 18.w,
              height: 18.h,
            ),
            onPressed: () {}));
  }
}

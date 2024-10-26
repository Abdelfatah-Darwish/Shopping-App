import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:shopping_app/core/helpers/extensions.dart';
import 'package:shopping_app/core/routing/routes.dart';
import 'package:shopping_app/core/theming/colors.dart';
import 'package:shopping_app/core/theming/text_styles.dart';
import 'package:shopping_app/core/widgets/spacing.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: ColorsManager.white,
        backgroundColor: ColorsManager.white,
        leading: IconButton(
          icon: Image.asset(
            "assets/images/next.png",
            width: 24.w,
            height: 24.h,
          ),
          onPressed: () {
            context.pushReplacementNamed(Routes.homeScreen);
          },
        ),
        title: Text(
          "Notification",
          style: TextStyles.font18blackSemiBold,
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 230),
        child: Column(
          children: [
            Center(
                child: Text(
              " Not Notification Yet",
              style: TextStyles.font18BlackRegular(context),
            )),
            verticalSpace(10),
            Center(
                child: Lottie.asset('assets/svg/animation_notification.json',
                    width: 250.w, height: 250.h)),
          ],
        ),
      ),
    );
  }
}

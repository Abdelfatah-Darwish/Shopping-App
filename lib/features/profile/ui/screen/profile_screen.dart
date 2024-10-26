import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shopping_app/core/helpers/extensions.dart';
import 'package:shopping_app/core/routing/routes.dart';
import 'package:shopping_app/core/theming/colors.dart';
import 'package:shopping_app/core/theming/text_styles.dart';
import 'package:shopping_app/core/widgets/spacing.dart';
import 'package:shopping_app/features/profile/ui/widgets/account_profile.dart';
import 'package:shopping_app/features/profile/ui/widgets/edit_profile.dart';
import 'package:shopping_app/features/profile/ui/widgets/privacy_profile.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Profile",
            style: TextStyles.font20BlackSemiBold,
          ),
          leading: IconButton(
              onPressed: () {
                context.pushReplacementNamed(Routes.homeScreen);
              },
              icon: Image.asset(
                'assets/images/next.png',
                width: 20.w,
                height: 20.h,
              )),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const EditProfile(),
                verticalSpace(20),
                AccountProfile(),
                verticalSpace(10),
                PrivacySection()
              ],
            ),
          ),
        ),
      ),
    );
  }
}

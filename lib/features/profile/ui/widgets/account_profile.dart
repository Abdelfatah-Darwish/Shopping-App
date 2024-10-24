import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shopping_app/core/constant/app_divider.dart';
import 'package:shopping_app/core/helpers/extensions.dart';
import 'package:shopping_app/core/routing/routes.dart';
import 'package:shopping_app/core/theming/colors.dart';
import 'package:shopping_app/core/theming/text_styles.dart';
import 'package:shopping_app/core/widgets/spacing.dart';
import 'package:shopping_app/features/profile/ui/widgets/user_info_module.dart';

class AccountProfile extends StatelessWidget {
  AccountProfile({super.key});
  List<String> title = [
    'Personal informations',
    'Payment method',
    'Address',
    'Measurements',
    'Notification',
  ];
  List<String> photo = [
    'profile.png',
    'payment.png',
    'location.png',
    'measurement.png',
    'notification.png',
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "Account",
              style: TextStyles.font18PinkBold,
            ),
          ],
        ),
        verticalSpace(5),
        Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            boxShadow: [
              BoxShadow(),
            ],
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          child: Column(
            children: [
              for (int i = 0; i < title.length; i++)
                Column(
                  children: [
                    UserInFormationSection(
                      AssetsPath: photo[i],
                      title: title[i],
                    ),
                    if (i < 4) const AppDivider(),
                  ],
                ),
              InkWell(
                onTap: () async {
                  await FirebaseAuth.instance.signOut();
                  context.pushReplacementNamed(Routes.loginScreen);
                },
                child: ListTile(
                  leading: const Icon(Icons.logout),
                  title: Text(
                    'Logout',
                    style: TextStyles.font13blackSemiBold
                        .copyWith(color: Colors.black),
                  ),
                  // subtitle: subtitle,
                  trailing: IconButton(
                    icon: Image.asset(
                      'assets/images/arrow-right.png',
                      width: 18.w,
                      height: 18.h,
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

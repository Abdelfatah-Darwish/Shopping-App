import 'package:flutter/material.dart';
import 'package:shopping_app/core/constant/app_divider.dart';
import 'package:shopping_app/core/helpers/extensions.dart';
import 'package:shopping_app/core/routing/routes.dart';
import 'package:shopping_app/core/theming/text_styles.dart';
import 'package:shopping_app/core/widgets/spacing.dart';
import 'package:shopping_app/features/profile/ui/widgets/user_info_module.dart';

class AccountProfile extends StatelessWidget {
  AccountProfile({super.key});
  List<String> title = [
    'Personal informations',
    'Payment method',
    'Address',
    'DarkLightMode',
    'Notification',
  ];
  List<String> photo = [
    'profile.png',
    'payment.png',
    'location.png',
    'dark.png',
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
        GestureDetector(
          onTap: () {
            for (int i = 0; i < title.length; i++) {
              if (i == 3) {
                context.pushReplacementNamed(Routes.dark_light);
              }
            }
          },
          child: Container(
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
              ],
            ),
          ),
        ),
      ],
    );
  }
}

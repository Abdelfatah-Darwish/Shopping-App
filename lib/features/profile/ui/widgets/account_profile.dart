import 'package:flutter/material.dart';
import 'package:shopping_app/core/constant/app_divider.dart';
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
            ],
          ),
        ),
      ],
    );
  }
}

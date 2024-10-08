import 'package:flutter/material.dart';
import 'package:shopping_app/core/constant/app_divider.dart';
import 'package:shopping_app/core/theming/text_styles.dart';
import 'package:shopping_app/core/widgets/spacing.dart';

import 'package:shopping_app/features/profile/ui/widgets/user_info_module.dart';

class PrivacySection extends StatelessWidget {
  PrivacySection({super.key});

  List<String> title = [
    'Orders',
    'Security',
    'Privacy & Cookie policy',
    'Terms & Conditions',
    'Rating & Feedback',
    'Switch accounts',
  ];

  List<String> photo = [
    'order.png',
    'security.png',
    'privacy.png',
    'terms.png',
    'rating.png',
    'switch_account.png'
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Privacy",
                style: TextStyles.font18PinkBold,
              ),
            ],
          ),
          verticalSpace(10),
          Container(
            width: double.infinity,
            decoration: const BoxDecoration(
              boxShadow: [
                BoxShadow(),
              ],
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(12)),
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
                      if (i < title.length - 1) const AppDivider(),
                    ],
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

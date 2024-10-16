import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shopping_app/core/theming/text_styles.dart';
import 'package:shopping_app/core/widgets/spacing.dart';

class CheckoutAppBar extends StatelessWidget {
  const CheckoutAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          icon: Image.asset(
            "assets/images/next.png",
            width: 24.w,
            height: 24.h,
          ),
          onPressed: () {
            // context.pushReplacementNamed(Routes.homeScreen);
          },
        ),
        horizontalSpace(118),
        Text(
          "Checkout",
          style: TextStyles.font20BlackSemiBold
              .copyWith(color: const Color(0xFF000000)),
        ),
      ],
    );
  }
}
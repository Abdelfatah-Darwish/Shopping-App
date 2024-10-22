import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shopping_app/core/theming/text_styles.dart';

class AddNewPayment extends StatelessWidget {
  const AddNewPayment({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: RichText(
        text: TextSpan(
          text: '+', // Default text
          style: TextStyles.font16BlackRegular, // Default style
          children: <TextSpan>[
            TextSpan(
              text: ' Add new payment method',
              style: TextStyles.font13blackRegular
                  .copyWith(fontSize: 12.sp), // Bigger font size
            ),
          ],
        ),
      ),
    );
  }
}

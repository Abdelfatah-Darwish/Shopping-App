import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shopping_app/core/theming/colors.dart';
import 'package:shopping_app/core/theming/text_styles.dart';
import 'package:shopping_app/core/widgets/text_button.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: ColorsManager.white,
      child: ListTile(
        leading: Image.asset(
          'assets/images/user_pic.png',
          width: 35.w,
          height: 35.h,
        ),
        title: Text(
          'Hello, Dalida Morad',
          style: TextStyles.font15BlackSemiBold(context)
              .copyWith(color: Colors.black),
        ),
        subtitle: Text('Saramorad0@gmail.com',
            style: TextStyles.font12lightGreyRegular),
        trailing: AppTextButton(
          buttonText: 'edit',
          textStyle: TextStyles.font12WhiteRegular,
          onPressed: () {},
          buttonWidth: 20.w,
          buttonHeight: 20.h,
          horizontalPadding: 2,
          verticalPadding: 2,
        ),
      ),
    );
  }
}

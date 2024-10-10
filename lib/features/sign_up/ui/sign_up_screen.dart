import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shopping_app/core/helpers/extensions.dart';
import 'package:shopping_app/core/routing/routes.dart';
import 'package:shopping_app/delete_this_after_merge/sign_up_widgets/already_have_account.dart';
import 'package:shopping_app/delete_this_after_merge/sign_up_widgets/password_validation.dart';
import 'package:shopping_app/delete_this_after_merge/theming/text_styles.dart';
import 'package:shopping_app/delete_this_after_merge/widgets/spacing.dart';
import 'package:shopping_app/delete_this_after_merge/widgets/text_button.dart';
import 'package:shopping_app/delete_this_after_merge/widgets/text_form_field.dart';
import 'package:shopping_app/features/sign_up/ui/widgets/sign_up_form.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 21.h),
          child: Center(
            child: Column(
              children: [
                Text(
                  'Sign Up',
                  style: TextStyles.font24BlackRegular
                      .copyWith(color: const Color(0xFF000000)),
                ),
                verticalSpace(24),
                Image.asset(
                  'assets/images/Mobile login-pana 1.png',
                  height: 240.h,
                  width: 240.w,
                ),
                verticalSpace(2),
                Form(
                  key: formKey,
                  child: const SignUpForm(),
                ),
                verticalSpace(24),
                AppTextButton(
                  buttonText: 'Sign Up',
                  textStyle: TextStyles.font18WhiteRegular,
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      // Proceed with form submission if validation passes
                      print("Form is valid");
                    }
                  },
                ),
                verticalSpace(18),
                const AlreadyHaveAccountText(),
              ],
            ),
          ),
        ),
      )),
    );
  }
}

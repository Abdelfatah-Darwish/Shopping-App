// import 'package:flutter/material.dart';

// class SignUpScreen extends StatelessWidget {
//   const SignUpScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const Scaffold(
//       body: SafeArea(
//         child: Center(
//           child: Text('Sign Up Screen!!'),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shopping_app/delete_this_after_merge/sign_up_widgets/already_have_account.dart';
import 'package:shopping_app/delete_this_after_merge/theming/text_styles.dart';
import 'package:shopping_app/delete_this_after_merge/widgets/spacing.dart';
import 'package:shopping_app/delete_this_after_merge/widgets/text_button.dart';
import 'package:shopping_app/delete_this_after_merge/widgets/text_form_field.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final formKey = GlobalKey<FormState>();
  bool isObscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 21.h),
        child: SingleChildScrollView(
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
                  child: Column(
                    children: [
                      AppTextFormField(
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 20.w,
                          vertical: 18.h,
                        ),
                        hintText: 'E-mail',
                        inputTextStyle: TextStyles.font18BlackRegular,
                        validator: (value) {},
                      ),
                      verticalSpace(16),
                      AppTextFormField(
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 20.w,
                          vertical: 18.h,
                        ),
                        hintText: 'Password',
                        validator: (value) {},
                        isObscureText: isObscureText,
                        suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              isObscureText = !isObscureText;
                            });
                          },
                          child: Icon(
                            isObscureText
                                ? Icons.visibility_off
                                : Icons.visibility,
                          ),
                        ),
                      ),
                      verticalSpace(16),
                      AppTextFormField(
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 20.w,
                          vertical: 18.h,
                        ),
                        hintText: 'Confirm password',
                        validator: (value) {},
                        isObscureText: isObscureText,
                        suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              isObscureText = !isObscureText;
                            });
                          },
                          child: Icon(
                            isObscureText
                                ? Icons.visibility_off
                                : Icons.visibility,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                verticalSpace(24),
                AppTextButton(
                  buttonText: 'Sign Up',
                  textStyle: TextStyles.font18WhiteRegular,
                  onPressed: () {},
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

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shopping_app/delete_this_after_merge/theming/text_styles.dart';
import 'package:shopping_app/delete_this_after_merge/widgets/spacing.dart';
import 'package:shopping_app/delete_this_after_merge/widgets/text_form_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();
  bool isObscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Text(
                'Welcome back',
                style: TextStyles.font24BlackRegular
                    .copyWith(color: const Color(0xFF000000)),
              ),
              verticalSpace(16),
              Image.asset(
                'assets/images/Tablet login-pana 1.png',
                height: 230.h,
                width: 230.w,
              ),
              verticalSpace(19),
              Form(
                  key: formKey,
                  child: Column(
                    children: [
                      AppTextFormField(
                        hintText: 'E-mail / phone number',
                        inputTextStyle: TextStyles.font18BlackRegular,
                        validator: (value) {},
                      ),
                      verticalSpace(19),
                      AppTextFormField(
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
                      Align(
                        alignment: Alignment.topRight,
                        child: Text(
                          'Forgot password?',
                          style: TextStyles.font14PinkRegular
                              .copyWith(color: const Color(0xFFFF1768)),
                        ),
                      ),
                    ],
                  )),
            ],
          ),
        ),
      )),
    );
  }
}

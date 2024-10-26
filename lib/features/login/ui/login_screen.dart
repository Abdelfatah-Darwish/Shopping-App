// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shopping_app/core/helpers/extensions.dart';
import 'package:shopping_app/core/routing/routes.dart';
import 'package:shopping_app/core/theming/text_styles.dart';
import 'package:shopping_app/core/widgets/error_dialog.dart';
import 'package:shopping_app/core/widgets/text_form_field.dart';
import 'package:shopping_app/delete_this_after_merge/login_widgets/dont_have_account.dart';

import 'package:shopping_app/delete_this_after_merge/widgets/spacing.dart';
import 'package:shopping_app/delete_this_after_merge/widgets/text_button.dart';
import 'package:shopping_app/delete_this_after_merge/widgets/text_form_field.dart';
import 'package:shopping_app/core/networking/auth/auth_service.dart';
import 'package:shopping_app/features/login/ui/widgets/dont_have_account.dart';
import 'package:shopping_app/features/login/ui/widgets/remember_me_checkbox.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  final formKey = GlobalKey<FormState>();
  bool isObscureText = true;

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
                  'Welcome back',
                  style: TextStyles.font24BlackRegular(context)
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
                        controller: _emailController,
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 20.w,
                          vertical: 18.h,
                        ),
                        hintText: 'E-mail / phone number',
                        inputTextStyle: TextStyles.font18BlackRegular(context),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter a valid email';
                          }
                          return null; // If validation passes
                        },
                      ),
                      verticalSpace(19),
                      AppTextFormField(
                        controller: _passwordController,
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 20.w,
                          vertical: 18.h,
                        ),
                        hintText: 'Password',
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter a valid password';
                          }
                          return null;
                        },
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
                Align(
                  alignment: Alignment.topRight,
                  child: Text(
                    'Forgot password?',
                    style: TextStyles.font14PinkRegular
                        .copyWith(color: const Color(0xFFFF1768)),
                  ),
                ),
                const RememberMeCheckbox(),
                // verticalSpace(16),
                AppTextButton(
                  buttonText: 'Sign In',
                  textStyle: TextStyles.font18WhiteRegular,
                  onPressed: () async {
                    if (formKey.currentState!.validate()) {
                      // Perform login and handle potential errors
                      final message = await AuthService().login(
                        email: _emailController.text,
                        password: _passwordController.text,
                      );

                      if (message != null && message.contains('Success')) {
                        // Navigate to the home screen if login is successful
                        context.pushReplacementNamed(Routes.homeScreen);
                      } else {
                        // Show an error dialog using the ErrorDialog widget
                        showDialog(
                          context: context,
                          builder: (context) => ErrorDialog(
                            errorMessage:
                                message ?? 'An unknown error occurred',
                            titleErrorMessage: 'Login Error',
                          ),
                        );
                      }
                    }
                  },
                ),

                verticalSpace(18),
                const DontHaveAccountText(),
              ],
            ),
          ),
        ),
      )),
    );
  }
}

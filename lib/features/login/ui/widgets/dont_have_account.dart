import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:shopping_app/core/helpers/extensions.dart';
import 'package:shopping_app/core/routing/routes.dart';
import 'package:shopping_app/core/theming/text_styles.dart';

class DontHaveAccountText extends StatelessWidget {
  const DontHaveAccountText({super.key});
//
  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: 'Don\'t have an account?',
            style: TextStyles.font18BlackRegular(context),
          ),
          TextSpan(
            text: ' Sign Up',
            style: TextStyles.font20PinkRegular,
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                context.pushReplacementNamed(Routes.signUpScreen);
              },
          ),
        ],
      ),
    );
  }
}

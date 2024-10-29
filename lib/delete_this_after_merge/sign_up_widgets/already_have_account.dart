// import 'package:flutter/gestures.dart';
// import 'package:flutter/material.dart';
// import 'package:shopping_app/core/helpers/extensions.dart';
// import 'package:shopping_app/core/routing/routes.dart';
// import 'package:shopping_app/delete_this_after_merge/theming/text_styles.dart';

// class AlreadyHaveAccountText extends StatelessWidget {
//   const AlreadyHaveAccountText({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return RichText(
//       textAlign: TextAlign.center,
//       text: TextSpan(
//         children: [
//           TextSpan(
//             text: 'Already have an account?',
//             style: TextStyles.font18BlackRegular
//                 .copyWith(color: const Color(0xFF000000)),
//           ),
//           TextSpan(
//             text: ' Sign In',
//             style: TextStyles.font20PinkRegular,
//             recognizer: TapGestureRecognizer()
//               ..onTap = () {
//                 context.pushReplacementNamed(Routes.loginScreen);
//               },
//           ),
//         ],
//       ),
//     );
//   }
// }

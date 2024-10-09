// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:shopping_app/delete_this_after_merge/theming/colors.dart';
import 'package:shopping_app/delete_this_after_merge/theming/text_styles.dart';
import 'package:shopping_app/delete_this_after_merge/widgets/spacing.dart';

class PasswordValidation extends StatelessWidget {
  final bool hasLowerCase;
  final bool hasUpperCase;

  final bool hasNumber;
  final bool hasMinLength;

  const PasswordValidation(
      {super.key,
      required this.hasLowerCase,
      required this.hasUpperCase,
      required this.hasNumber,
      required this.hasMinLength});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildValidationRow('8  Characteres Minimum', hasMinLength),
        verticalSpace(2),
        buildValidationRow('One Upper Character', hasUpperCase),
        verticalSpace(2),
        buildValidationRow('One Lower Character', hasLowerCase),
        verticalSpace(2),
        buildValidationRow('One Special Number ', hasNumber),
      ],
    );
  }

  Widget buildValidationRow(String text, bool hasValidated) {
    return Row(
      children: [
        CircleAvatar(
          radius: 2.5,
          backgroundColor:
              hasValidated ? const Color(0xFF2F8655) : const Color(0xFFDD2222),
        ),
        horizontalSpace(6),
        Text(
          text,
          style: TextStyles.font12RedRegular.copyWith(
            color: hasValidated
                ? const Color(0xFF2F8655)
                : const Color(0xFFDD2222),
          ),
        )
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shopping_app/delete_this_after_merge/theming/colors.dart';
import 'package:shopping_app/delete_this_after_merge/theming/text_styles.dart';

class AppTextFormField extends StatelessWidget {
  final EdgeInsetsGeometry? contentPadding;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;
  final TextStyle? inputTextStyle;
  final TextStyle? hintStyle;
  final String hintText;
  final bool? isObscureText;
  final Widget? suffixIcon;
  final TextEditingController? controller;
  final Function(String?) validator;
  const AppTextFormField({
    super.key,
    this.contentPadding,
    this.focusedBorder,
    this.enabledBorder,
    this.inputTextStyle,
    this.hintStyle,
    required this.hintText,
    this.isObscureText,
    this.suffixIcon,
    this.controller,
    required this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        isDense: true,
        contentPadding: contentPadding ??
            EdgeInsets.symmetric(horizontal: 29.w, vertical: 20.h),
        focusedBorder: focusedBorder ??
            OutlineInputBorder(
              borderSide: const BorderSide(
                color: ColorsManager.pink,
                width: 1.7,
              ),
              borderRadius: BorderRadius.circular(30.0),
            ),
        enabledBorder: enabledBorder ??
            OutlineInputBorder(
              borderSide: const BorderSide(
                color: ColorsManager.lightGrey,
                width: 1.7,
              ),
              borderRadius: BorderRadius.circular(30.0),
            ),
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: ColorsManager.pink,
            width: 2.0,
          ),
          borderRadius: BorderRadius.circular(30.0),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: ColorsManager.red,
            width: 2.0,
          ),
          borderRadius: BorderRadius.circular(30.0),
        ),
        hintStyle: hintStyle ?? TextStyles.font18lightGreyRegular,
        hintText: hintText,
        suffixIcon: suffixIcon,
      ),
      obscureText: isObscureText ?? false,
      style: TextStyles.font18BlackRegular,
      validator: (value) {
        return validator(value);
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:shopping_app/core/theming/colors.dart';
import 'package:shopping_app/core/theming/text_styles.dart';
import 'package:shopping_app/core/widgets/spacing.dart';
import 'package:shopping_app/core/widgets/text_form_field.dart';

class ProductNameAndDescription extends StatelessWidget {
  const ProductNameAndDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'Product name',
              style: TextStyles.font16BlackSemiBold,
            ),
          ],
        ),
        verticalSpace(7),
        AppTextFormField(
          hintText: 'Ex: wrapped dress',
          maxline: 1,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16.0),
            borderSide: const BorderSide(
              color: ColorsManager.pink,
              width: 1.7,
            ),
          ),
        ),
        verticalSpace(10),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'Product description',
              style: TextStyles.font16BlackSemiBold,
            ),
          ],
        ),
        verticalSpace(7),
        AppTextFormField(
          hintText:
              'Ex: long Italian silky dress with wrapped waist bla bla bla bla bla bla bla bla ',
          maxline: 4,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16.0),
            borderSide: const BorderSide(
              color: ColorsManager.pink,
              width: 1.7,
            ),
          ),
        )
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:shopping_app/core/helpers/extensions.dart';
import 'package:shopping_app/core/routing/routes.dart';
import 'package:shopping_app/core/theming/colors.dart';
import 'package:shopping_app/core/theming/text_styles.dart';
import 'package:shopping_app/core/widgets/spacing.dart';
import 'package:shopping_app/core/widgets/text_button.dart';
import 'package:shopping_app/core/widgets/text_form_field.dart';

class PricingAndStock extends StatelessWidget {
  const PricingAndStock({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "Pricing&Stock",
              style: TextStyles.font20BlackSemiBold(context),
            ),
          ],
        ),
        verticalSpace(5),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'Price',
              style: TextStyles.font16BlackSemiBold(context),
            ),
          ],
        ),
        verticalSpace(7),
        AppTextFormField(
          hintText: 'EX: 180 ',
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
              'Stock',
              style: TextStyles.font16BlackSemiBold(context),
            ),
          ],
        ),
        verticalSpace(7),
        AppTextFormField(
          hintText: 'Ex: 66 piece ',
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
        AppTextButton(
            buttonText: "Add product",
            textStyle: TextStyles.font18WhiteRegular,
            onPressed: () {
              context.pushNamed(Routes.addProduct);
            })
      ],
    );
  }
}

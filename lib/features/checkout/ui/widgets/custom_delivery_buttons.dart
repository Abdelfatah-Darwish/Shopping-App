import 'package:flutter/material.dart';
import 'package:shopping_app/core/theming/colors.dart';
import 'package:shopping_app/core/theming/text_styles.dart';
import 'package:shopping_app/delete_this_after_merge/widgets/text_button.dart';

class CustomDeliveryButtons extends StatefulWidget {
  const CustomDeliveryButtons({super.key});

  @override
  State<CustomDeliveryButtons> createState() => _CustomDeliveryButtonsState();
}

class _CustomDeliveryButtonsState extends State<CustomDeliveryButtons> {
  bool isDeliverySelected = true; // Track the selected button

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // Delivery Button
        AppTextButton(
          backgroundColor:
              isDeliverySelected ? ColorsManager.pink : ColorsManager.white,
          borderColor: isDeliverySelected
              ? ColorsManager.pink
              : ColorsManager.pink, // Pink border for selected
          buttonText: 'Delivery',
          textStyle: TextStyles.font16lightGreyRegular.copyWith(
            color: isDeliverySelected ? Colors.white : ColorsManager.pink,
          ),
          onPressed: () {
            setState(() {
              isDeliverySelected = true; // Select Delivery
            });
          },
          buttonWidth: 155,
          buttonHeight: 48,
          borderRadius: 22,
        ),

        // Pick-up Button
        AppTextButton(
          backgroundColor:
              !isDeliverySelected ? ColorsManager.pink : ColorsManager.white,
          borderColor: !isDeliverySelected
              ? ColorsManager.pink
              : ColorsManager.pink, // Pink border for selected
          buttonText: 'Pick-up',
          textStyle: TextStyles.font16lightGreyRegular.copyWith(
            color: !isDeliverySelected ? Colors.white : ColorsManager.pink,
          ),
          onPressed: () {
            setState(() {
              isDeliverySelected = false; // Select Pick-up
            });
          },
          buttonWidth: 155,
          buttonHeight: 48,
          borderRadius: 22,
        ),
      ],
    );
  }
}

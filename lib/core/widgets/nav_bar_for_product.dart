import 'package:flutter/material.dart';
import 'package:shopping_app/core/theming/colors.dart';
import 'package:shopping_app/core/theming/text_styles.dart';
import 'package:shopping_app/core/widgets/text_button.dart';

class NavBarProductDetails extends StatelessWidget {
  const NavBarProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      // color: ColorsManager.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
              onPressed: () {},
              icon: Image.asset(
                'assets/images/love.png',
              )),
          AppTextButton(
            buttonText: "Buy now",
            textStyle: TextStyles.font18WhiteRegular,
            onPressed: () {},
            buttonWidth: 155,
            borderRadius: 30,
            buttonHeight: 50,
          ),
          IconButton(
              onPressed: () {},
              icon: Image.asset(
                'assets/images/basket.png',
              ))
        ],
      ),
    );
  }
}

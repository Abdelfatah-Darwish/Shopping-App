import 'package:flutter/material.dart';
import 'package:shopping_app/core/theming/colors.dart';

class AppFavouriteIcon extends StatelessWidget {
  const AppFavouriteIcon({super.key});

  @override
  Widget build(BuildContext context) {
    // final controller = Get.put(FevouritesController());
    return CircleAvatar(
      backgroundColor: ColorsManager.white,
      child: IconButton(
        onPressed: () async {},
        icon: Image.asset('assets/images/love.png'),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shopping_app/core/theming/text_styles.dart';
import 'package:shopping_app/core/widgets/spacing.dart';

class ColorOfProduct extends StatelessWidget {
  ColorOfProduct({super.key});

  List<String> colorsOfProduct = [
    'assets/images/c1.png',
    'assets/images/c3.png',
    'assets/images/c5.png',
    'assets/images/c4.png',
    'assets/images/c2.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'Color',
              style: TextStyles.font16BlackSemiBold(context),
            ),
          ],
        ),
        verticalSpace(2),
        Padding(
          padding: const EdgeInsets.only(right: 55.0),
          child: SizedBox(
            width: 370.w,
            height: 60.h,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(
                colorsOfProduct.length,
                (index) => IconButton(
                  onPressed: () {},
                  icon: Image.asset(
                    colorsOfProduct[index],
                    width: 32.w,
                    height: 32.h,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

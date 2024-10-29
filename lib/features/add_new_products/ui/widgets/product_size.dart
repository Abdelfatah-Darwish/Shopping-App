import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shopping_app/core/theming/text_styles.dart';
import 'package:shopping_app/core/widgets/spacing.dart';

class ProductSize extends StatelessWidget {
  ProductSize({super.key});
  List<String> sizeOfProduct = [
    'assets/images/s.png',
    'assets/images/m.png',
    'assets/images/l.png',
    'assets/images/xs.png',
    'assets/images/xl.png',
    'assets/images/xxl.png',
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'Size',
              style: TextStyles.font16BlackSemiBold(context),
            ),
          ],
        ),
        verticalSpace(2),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'Pick available size',
              style: TextStyles.font12lightGreyRegular,
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(right: 55.0),
          child: Container(
            width: 370.w,
            height: 60.h,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.values[2],
              children: [
                for (int i = 0; i < sizeOfProduct.length; i++)
                  IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                        sizeOfProduct[i],
                        width: 32.w,
                        height: 32.h,
                      )),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shopping_app/core/theming/text_styles.dart';
import 'package:shopping_app/core/widgets/spacing.dart';

class OrderItemsList extends StatelessWidget {
  const OrderItemsList({super.key});

  @override
  Widget build(BuildContext context) {
    // List of image URLs and prices
    final List<Map<String, String>> items = [
      {"image": "assets/images/Order_Items.png", "price": "580 L.E"},
      {"image": "assets/images/Order_Items.png", "price": "600 L.E"},
      {"image": "assets/images/Order_Items.png", "price": "750 L.E"},
      {"image": "assets/images/Order_Items.png", "price": "800 L.E"},
      {"image": "assets/images/Order_Items.png", "price": "800 L.E"},
      {"image": "assets/images/Order_Items.png", "price": "800 L.E"},
      {"image": "assets/images/Order_Items.png", "price": "800 L.E"},
    ];
    return Padding(
      padding: const EdgeInsets.only(left: 23),
      child: SizedBox(
        height: 143.h, // Set the height of the list
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: items.length,
          itemBuilder: (context, index) {
            return Container(
              width: 88.w, // Set the width of each item
              margin: EdgeInsets.only(right: 8.w),
              child: Column(
                children: [
                  // Display the image
                  ClipRRect(
                    borderRadius: BorderRadius.circular(11),
                    child: Image.asset(
                      items[index]["image"]!,
                      width: 88.w,
                      height: 100.h,
                      fit: BoxFit.cover,
                    ),
                  ),
                  verticalSpace(2), // Add some space between image and text
                  // Display the price text
                  Text(
                    items[index]["price"]!,
                    style: TextStyles.font16BlackSemiBold,
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

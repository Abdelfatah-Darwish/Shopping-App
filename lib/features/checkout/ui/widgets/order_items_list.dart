import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shopping_app/core/theming/text_styles.dart';
import 'package:shopping_app/core/widgets/spacing.dart';

class OrderItemsList extends StatelessWidget {
  final List<Map> products;

  const OrderItemsList({super.key, required this.products});

  @override
  Widget build(BuildContext context) {
    // Check if products list is empty before building UI
    if (products.isEmpty) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }
    return Padding(
      padding: const EdgeInsets.only(left: 23),
      child: SizedBox(
        height: 143.h, // Set the height of the list
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: products.length,
          itemBuilder: (context, index) {
            return Container(
              width: 88.w, // Set the width of each item
              margin: EdgeInsets.only(right: 8.w),
              child: Column(
                children: [
                  // Display the image
                  ClipRRect(
                    borderRadius: BorderRadius.circular(11),
                    child: Image.network(
                      products[index]["image"]!,
                      width: 88.w,
                      height: 100.h,
                      fit: BoxFit.cover,
                    ),
                  ),
                  verticalSpace(2), // Add some space between image and text
                  // Display the price text
                  Text(
                    products[index]["price"]!,
                    style: TextStyles.font16BlackSemiBold(context),
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

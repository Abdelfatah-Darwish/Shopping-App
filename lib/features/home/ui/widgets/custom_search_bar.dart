import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shopping_app/core/theming/colors.dart';
import 'package:shopping_app/core/widgets/spacing.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: TextField(
            decoration: InputDecoration(
              hintText: "Search here",
              hintStyle: const TextStyle(color: ColorsManager.lightGrey),
              prefixIcon: const Icon(Icons.search, color: ColorsManager.pink),
              filled: true,
              fillColor: Colors.white,
              contentPadding: const EdgeInsets.all(15.0),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30.0),
                borderSide: BorderSide(
                  color: ColorsManager.grey,
                  width: 1.5.w,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30.0),
                borderSide: BorderSide(
                  color: ColorsManager.grey,
                  width: 1.5.w,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30.0),
                borderSide: BorderSide(
                  color: Colors.pink,
                  width: 2.0.w,
                ),
              ),
            ),
          ),
        ),
        horizontalSpace(4),
        Container(
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: ColorsManager.lightPink,
          ),
          child: IconButton(
            icon: const Icon(Icons.tune, color: ColorsManager.pink, size: 32),
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}

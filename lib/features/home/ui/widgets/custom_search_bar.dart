import 'package:flutter/material.dart';
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
              hintStyle: TextStyle(color: ColorsManager.lightGrey),
              prefixIcon: Icon(Icons.search, color: ColorsManager.pink),
              filled: true,
              fillColor: Colors.white,
              contentPadding: const EdgeInsets.all(15.0),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30.0),
                borderSide: BorderSide(
                  color: ColorsManager.grey,
                  width: 1.5,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30.0),
                borderSide: BorderSide(
                  color: ColorsManager.grey,
                  width: 1.5,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30.0),
                borderSide: BorderSide(
                  color: Colors.pink,
                  width: 2.0,
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
            icon: Icon(Icons.tune, color: ColorsManager.pink, size: 32),
            onPressed: () {
              // Handle filter action
            },
          ),
        ),
      ],
    );
  }
}

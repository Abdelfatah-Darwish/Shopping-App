import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shopping_app/core/theming/colors.dart';
import 'package:shopping_app/core/theming/text_styles.dart';
import 'package:shopping_app/features/category/logic/cubit/category_cubit.dart';

class BuildProductCategory extends StatelessWidget {
  const BuildProductCategory({super.key});
//  i choosed bloc not statefulWidget cuze i will use this widget in diffrent screen
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CategoryCubit(),
      child: BlocBuilder<CategoryCubit, int>(
        builder: (context, selectedIndex) {
          return SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildProductCategory(context,
                    name: "All", index: 0, selectedIndex: selectedIndex),
                _buildProductCategory(context,
                    name: "jewelery", index: 1, selectedIndex: selectedIndex),
                _buildProductCategory(context,
                    name: "men's clothing",
                    index: 2,
                    selectedIndex: selectedIndex),
                _buildProductCategory(context,
                    name: "women's clothing",
                    index: 3,
                    selectedIndex: selectedIndex),
                _buildProductCategory(context,
                    name: "electronics",
                    index: 4,
                    selectedIndex: selectedIndex),
              ],
            ),
          );
        },
      ),
    );
  }

//   not clean function , i will try refactor it -> "noran"
  Widget _buildProductCategory(BuildContext context,
      {required int index, required String name, required int selectedIndex}) {
    final isSelected = index ==
        selectedIndex; // Check if this category is selected by comparing the initial index by selected index

    return GestureDetector(
      onTap: () {
        context
            .read<CategoryCubit>()
            .updateIndex(index); // Update the selected index when tapped
      },
      child: Container(
        width: 80.w,
        height: 30.h,
        margin: const EdgeInsets.only(right: 14),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: isSelected ? ColorsManager.pink : ColorsManager.lightPink,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Text(
          name,
          style: isSelected
              ? TextStyles.font12WhiteRegular
              : TextStyles.font12PinkRegular,
        ),
      ),
    );
  }
}

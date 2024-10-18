import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shopping_app/core/theming/text_styles.dart';
import 'package:shopping_app/core/widgets/spacing.dart';

class AddressContainer extends StatelessWidget {
  final bool isSelected;
  final String title;
  final String address;
  final VoidCallback onTap;

  const AddressContainer({
    required this.isSelected,
    required this.title,
    required this.address,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border.all(
            color: isSelected
                ? Colors.pink
                : const Color.fromRGBO(
                    0, 0, 0, 490), // Pink when selected, grey otherwise
            width: 2.0,
          ),
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Column(
          children: [
            if (isSelected)
              Image.asset(
                'assets/images/googl_map_image.png',
                width: double.infinity,
                fit: BoxFit.fill,
              ),
            verticalSpace(10),
            Row(
              children: [
                const Icon(
                  Icons.location_on_outlined,
                  size: 50,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyles.font14PinkRegular.copyWith(
                        color: const Color.fromRGBO(0, 0, 0, 150),
                      ),
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 209.w,
                          child: Text(
                            address,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        TextButton(
                          child: Text(
                            'Edit',
                            style: TextStyles.font12PinkRegular,
                          ),
                          onPressed: () {},
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

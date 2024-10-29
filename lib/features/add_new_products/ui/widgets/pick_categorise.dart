import 'package:flutter/material.dart';
import 'package:shopping_app/core/theming/colors.dart';
import 'package:shopping_app/core/theming/text_styles.dart';
import 'package:shopping_app/core/widgets/spacing.dart';

class PickCategorise extends StatefulWidget {
  const PickCategorise({super.key});

  @override
  State<PickCategorise> createState() => _PickCategoriseState();
}

class _PickCategoriseState extends State<PickCategorise> {
  List<String> category = [
    'Dress',
    'T-Shirt',
    'Pants',
    'Pijama',
    'Shoes',
    'Accessories',
    'Hijab',
    'Jacket',
  ];
  @override
  Widget build(BuildContext context) {
    return _buildDropdown('Category', category);
  }

  Widget _buildDropdown(String label, List<String> items) {
    String? dropdownValue;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyles.font15BlackSemiBold(context),
        ),
        verticalSpace(7),
        DropdownButtonFormField<String>(
          value: dropdownValue,
          onChanged: (String? newValue) {
            setState(() {
              dropdownValue = newValue;
            });
          },
          items: items.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
          decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16.0),
              borderSide: const BorderSide(
                color: ColorsManager.pink,
                width: 1.7,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

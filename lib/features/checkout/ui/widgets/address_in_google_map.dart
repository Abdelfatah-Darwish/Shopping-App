import 'package:flutter/material.dart';
import 'package:shopping_app/core/theming/colors.dart';
import 'package:shopping_app/core/theming/text_styles.dart';
import 'package:shopping_app/core/widgets/spacing.dart';
import 'package:shopping_app/features/checkout/ui/widgets/address_container.dart';

class AddressInGoogleMap extends StatefulWidget {
  const AddressInGoogleMap({super.key});

  @override
  State<AddressInGoogleMap> createState() => _AddressInGoogleMapState();
}

class _AddressInGoogleMapState extends State<AddressInGoogleMap> {
  int selectedContainer =
      1; // Variable to track which container is selected (1 for Home, 2 for Office)

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Address',
          style: TextStyles.font16BlackSemiBold
              .copyWith(color: ColorsManager.black),
        ),
        verticalSpace(6),
        AddressContainer(
          isSelected: selectedContainer == 1,
          title: 'Home',
          address: '33 Othman Ibn Affan st, Apt8, Adress, Cairo, Egypt',
          onTap: () {
            setState(() {
              selectedContainer = 1;
            });
          },
        ),
        verticalSpace(8),
        AddressContainer(
          isSelected: selectedContainer == 2,
          title: 'Office',
          address: '77 Mohamed Ali st, Apt 22, Assailed, Cairo, Egypt',
          onTap: () {
            setState(() {
              selectedContainer = 2;
            });
          },
        ),
      ],
    );
  }
}

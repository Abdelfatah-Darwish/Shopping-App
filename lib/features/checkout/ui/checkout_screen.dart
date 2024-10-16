import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shopping_app/core/theming/colors.dart';
import 'package:shopping_app/core/theming/text_styles.dart';
import 'package:shopping_app/core/widgets/spacing.dart';
import 'package:shopping_app/delete_this_after_merge/widgets/text_button.dart';
import 'package:shopping_app/features/checkout/ui/widgets/checkout_app_bar.dart';
import 'package:shopping_app/features/checkout/ui/widgets/custom_delivery_buttons.dart';

class CheckoutScreen extends StatefulWidget {
  const CheckoutScreen({super.key});

  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 23.w),
            child: Column(
              children: [
                const CheckoutAppBar(),
                verticalSpace(14),
                const CustomDeliveryButtons(),
                verticalSpace(16),
                const AddressInGoogleMap(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class AddressInGoogleMap extends StatefulWidget {
  const AddressInGoogleMap({super.key});

  @override
  State<AddressInGoogleMap> createState() => _AddressInGoogleMapState();
}

class _AddressInGoogleMapState extends State<AddressInGoogleMap> {
  // Variable to track which container is selected (1 for Home, 2 for Office)
  int selectedContainer = 1;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Address',
          style: TextStyles.font16BlackSemiBold
              .copyWith(color: ColorsManager.black),
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              selectedContainer = 1; // Select Home
            });
          },
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              border: Border.all(
                color: selectedContainer == 1
                    ? Colors.pink
                    : Colors.grey, // Change border color based on selection
                width: 2.0,
              ),
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Column(
              children: [
                if (selectedContainer == 1)
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
                          'Home',
                          style: TextStyles.font14PinkRegular.copyWith(
                            color: const Color.fromRGBO(0, 0, 0, 150),
                          ),
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 209.w,
                              child: const Text(
                                '33 Othman Ibn Affan st, Apt8, Adress, Cairo, Egypt',
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
        ),
        verticalSpace(8),
        GestureDetector(
          onTap: () {
            setState(() {
              selectedContainer = 2; // Select Office
            });
          },
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              border: Border.all(
                color: selectedContainer == 2
                    ? Colors.pink
                    : Colors.grey, // Change border color based on selection
                width: 2.0,
              ),
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Column(
              children: [
                if (selectedContainer == 2)
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
                          'Office',
                          style: TextStyles.font14PinkRegular.copyWith(
                            color: const Color.fromRGBO(0, 0, 0, 150),
                          ),
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 209.w,
                              child: const Text(
                                '77 Mohamed Ali st, Apt 22, Assailed, Cairo, Egypt',
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
        ),
      ],
    );
  }
}


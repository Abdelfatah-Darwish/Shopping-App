import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shopping_app/core/theming/colors.dart';
import 'package:shopping_app/core/theming/text_styles.dart';
import 'package:shopping_app/core/widgets/spacing.dart';
import 'package:shopping_app/delete_this_after_merge/widgets/text_button.dart';
import 'package:shopping_app/features/checkout/ui/widgets/address_container.dart';
import 'package:shopping_app/features/checkout/ui/widgets/address_in_google_map.dart';
import 'package:shopping_app/features/checkout/ui/widgets/checkout_app_bar.dart';
import 'package:shopping_app/features/checkout/ui/widgets/custom_delivery_buttons.dart';
import 'package:shopping_app/features/checkout/ui/widgets/order_items_list.dart';

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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
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
              verticalSpace(24),
              Padding(
                padding: const EdgeInsets.only(left: 23),
                child: Text(
                  'Order items',
                  style: TextStyles.font16BlackSemiBold,
                ),
              ),
              verticalSpace(8),
              const OrderItemsList(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 23.w),
                child: Column(
                  children: [
                    Text(
                      'Pay with',
                      style: TextStyles.font16BlackSemiBold,
                    ),
                    const PayOptions(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PayOptions extends StatefulWidget {
  const PayOptions({super.key});

  @override
  State<PayOptions> createState() => _PayOptionsState();
}

class _PayOptionsState extends State<PayOptions> {
  bool isClicked = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 40.h,
          width: double.infinity,
          decoration: BoxDecoration(
            border: Border.all(
              color: isClicked
                  ? const Color.fromRGBO(0, 0, 0, 490)
                  : Colors.pink, // Pink when selected, grey otherwise
              width: 2,
            ),
            borderRadius: BorderRadius.circular(13.0),
          ),
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 8.w, right: 16.w),
                child: Image.asset(
                  'assets/images/logos_mastercard.png',
                  fit: BoxFit.fill,
                  width: 32.w,
                  height: 20.h,
                ),
              ),
              SizedBox(
                width: 223.w,
                child: Text(
                  'xxxx-2571',
                  style: TextStyles.font14grayRegular,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 16.w, right: 11.w),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      isClicked = !isClicked;
                    });
                  },
                  child: isClicked
                      ? Image.asset(
                          'assets/images/icon_button_not_selected.png',
                          fit: BoxFit.fill,
                          width: 18.w,
                          height: 18.h,
                        )
                      : Image.asset(
                          'assets/images/icon_button_is_selected.png',
                          fit: BoxFit.fill,
                          width: 18.w,
                          height: 18.h,
                        ),
                ),
              ),
            ],
          ),
        ),
        verticalSpace(8),
        Container(
          height: 40.h,
          width: double.infinity,
          decoration: BoxDecoration(
            border: Border.all(
              color: isClicked
                  ? Colors.pink
                  : const Color.fromRGBO(
                      0, 0, 0, 490), // Pink when selected, grey otherwise
              width: 2,
            ),
            borderRadius: BorderRadius.circular(13.0),
          ),
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 8.w, right: 16.w),
                child: Image.asset(
                  'assets/images/logos_apple_pay.png',
                  fit: BoxFit.fill,
                  width: 32.w,
                  height: 13.h,
                ),
              ),
              SizedBox(
                width: 223.w,
                child: Text(
                  'Apple pay',
                  style: TextStyles.font14BlackRegular,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 16.w, right: 11.w),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      isClicked = !isClicked;
                    });
                  },
                  child: isClicked
                      ? Image.asset(
                          'assets/images/icon_button_is_selected.png',
                          fit: BoxFit.fill,
                          width: 18.w,
                          height: 18.h,
                        )
                      : Image.asset(
                          'assets/images/icon_button_not_selected.png',
                          fit: BoxFit.fill,
                          width: 18.w,
                          height: 18.h,
                        ),
                ),
              ),
            ],
          ),
        ),
        verticalSpace(8),
        Container(
          height: 40.h,
          width: double.infinity,
          decoration: BoxDecoration(
            border: Border.all(
              color: isClicked
                  ? Colors.pink
                  : const Color.fromRGBO(
                      0, 0, 0, 490), // Pink when selected, grey otherwise
              width: 2,
            ),
            borderRadius: BorderRadius.circular(13.0),
          ),
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 8.w, right: 16.w),
                child: Image.asset(
                  'assets/images/logos_cash.png',
                  fit: BoxFit.fill,
                  width: 32.w,
                  height: 32.h,
                ),
              ),
              SizedBox(
                width: 223.w,
                child: Text(
                  'Cash',
                  style: TextStyles.font14BlackRegular,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 16.w, right: 11.w),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      isClicked = !isClicked;
                    });
                  },
                  child: isClicked
                      ? Image.asset(
                          'assets/images/icon_button_is_selected.png',
                          fit: BoxFit.fill,
                          width: 18.w,
                          height: 18.h,
                        )
                      : Image.asset(
                          'assets/images/icon_button_not_selected.png',
                          fit: BoxFit.fill,
                          width: 18.w,
                          height: 18.h,
                        ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

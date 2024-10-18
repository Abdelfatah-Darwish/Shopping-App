import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shopping_app/core/theming/text_styles.dart';
import 'package:shopping_app/core/widgets/spacing.dart';

class PaymentOptions extends StatefulWidget {
  const PaymentOptions({super.key});

  @override
  State<PaymentOptions> createState() => _PaymentOptionsState();
}

class _PaymentOptionsState extends State<PaymentOptions> {
  // This variable will track which container is selected
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildPaymentOption(
          index: 0,
          logoPath: 'assets/images/logos_mastercard.png',
          label: 'xxxx-2571',
          logoHeight: 20.h,
          logoWidth: 32.w,
        ),
        verticalSpace(8),
        _buildPaymentOption(
          index: 1,
          logoPath: 'assets/images/logos_apple_pay.png',
          label: 'Apple Pay',
          logoHeight: 13.h,
          logoWidth: 32.w,
        ),
        verticalSpace(8),
        _buildPaymentOption(
          index: 2,
          logoPath: 'assets/images/logos_cash.png',
          label: 'Cash',
          logoHeight: 32.h,
          logoWidth: 32.w,
        ), // Custom height for 'Cash'
      ],
    );
  }

  Widget _buildPaymentOption(
      {required int index,
      required String logoPath,
      required String label,
      required double logoHeight,
      required double logoWidth}) {
    bool isSelected = selectedIndex == index;

    return Container(
      height: 40.h,
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(
          color: isSelected ? Colors.pink : const Color.fromRGBO(0, 0, 0, 490),
          width: 2,
        ),
        borderRadius: BorderRadius.circular(13.0),
      ),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 8.w, right: 16.w),
            child: Image.asset(
              logoPath,
              fit: BoxFit.fill,
              width: logoWidth, // Use the custom width
              height: logoHeight, // Use the custom height
            ),
          ),
          SizedBox(
            width: 223.w,
            child: Text(
              label,
              style: TextStyles.font14grayRegular,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 16.w, right: 11.w),
            child: InkWell(
              onTap: () {
                setState(() {
                  selectedIndex = index; // Update the selected container
                });
              },
              child: Image.asset(
                isSelected
                    ? 'assets/images/icon_button_is_selected.png'
                    : 'assets/images/icon_button_not_selected.png',
                fit: BoxFit.fill,
                width: 18.w,
                height: 18.h,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

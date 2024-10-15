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
      body: SingleChildScrollView(
        child: SafeArea(
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
    );
  }
}

class AddressInGoogleMap extends StatefulWidget {
  const AddressInGoogleMap({super.key});

  @override
  State<AddressInGoogleMap> createState() => _AddressInGoogleMapState();
}

class _AddressInGoogleMapState extends State<AddressInGoogleMap> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Address',
          style: TextStyles.font16BlackSemiBold
              .copyWith(color: ColorsManager.black),
        )
      ],
    );
  }
}

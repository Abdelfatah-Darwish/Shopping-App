import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shopping_app/core/theming/colors.dart';
import 'package:shopping_app/core/theming/text_styles.dart';
import 'package:shopping_app/core/widgets/spacing.dart';
import 'package:shopping_app/features/add_new_products/ui/widgets/pick_categorise.dart';
import 'package:shopping_app/features/add_new_products/ui/widgets/price_and_stock.dart';
import 'package:shopping_app/features/add_new_products/ui/widgets/product_size.dart';
import 'package:shopping_app/features/add_new_products/ui/widgets/upload_image.dart';

class AddProductVariant extends StatelessWidget {
  const AddProductVariant({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorsManager.white,
        appBar: AppBar(
          backgroundColor: ColorsManager.white,
          leading: IconButton(
              onPressed: () {},
              icon: Image.asset(
                'assets/images/next.png',
                width: 24.w,
                height: 24.h,
              )),
          title: Text(
            'Add Product',
            style: TextStyles.font20BlackSemiBold(context),
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Product Image",
                      style: TextStyles.font20BlackSemiBold(context),
                    )
                  ],
                ),
                UploadImage(),
                verticalSpace(40),
                ProductSize(),
                verticalSpace(15),
                const PickCategorise(),
                verticalSpace(15),
                const PricingAndStock(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

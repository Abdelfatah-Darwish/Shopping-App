import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shopping_app/core/helpers/extensions.dart';
import 'package:shopping_app/core/routing/routes.dart';
import 'package:shopping_app/core/theming/colors.dart';
import 'package:shopping_app/core/theming/text_styles.dart';
import 'package:shopping_app/core/widgets/spacing.dart';
import 'package:shopping_app/features/add_new_products/ui/widgets/pick_categorise.dart';
import 'package:shopping_app/features/add_new_products/ui/widgets/price_and_stock.dart';
import 'package:shopping_app/features/add_new_products/ui/widgets/product_name_description.dart';
import 'package:shopping_app/features/add_new_products/ui/widgets/product_size.dart';
import 'package:shopping_app/features/add_new_products/ui/widgets/upload_image.dart';

class AddProductScreen extends StatelessWidget {
  const AddProductScreen({super.key});

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
                UploadImage(),
                verticalSpace(40),
                const ProductNameAndDescription(),
                verticalSpace(15),
                ProductSize(),
                verticalSpace(15),
                const PickCategorise(),
                verticalSpace(15),
                const PricingAndStock(),
                verticalSpace(5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'No variants yet',
                      style: TextStyles.font15BlackSemiBold,
                    ),
                    TextButton(
                        onPressed: () {
                          context.pushNamed(Routes.AddProductVariantScreen);
                        },
                        child: Text(
                          'Add one',
                          style: TextStyles.font12PinkBold,
                        )),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:shopping_app/core/widgets/nav_bar_for_product.dart';
import 'package:shopping_app/core/widgets/spacing.dart';
import 'package:shopping_app/features/product_details/widgets/color_of_product.dart';
import 'package:shopping_app/features/product_details/widgets/display_image_of_product.dart';
import 'package:shopping_app/features/product_details/widgets/display_info_of_product.dart';
import 'package:shopping_app/features/products/data/model/model_from_extension/product_model/product.dart';

class ProductDetailsScreen extends StatelessWidget {
  final Product product;
  const ProductDetailsScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: const NavBarProductDetails(),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              DisplayImageOfProduct(product: product),
              verticalSpace(20),
              DisplayInfoOfProduct(product: product),
              verticalSpace(10),
              ColorOfProduct()
            ]),
          ),
        ));
  }
}

import 'package:flutter/material.dart';
import 'package:shopping_app/core/theming/colors.dart';
import 'package:shopping_app/core/theming/text_styles.dart';
import 'package:shopping_app/core/widgets/spacing.dart';
import 'package:shopping_app/features/products/data/model/model_from_extension/product_model/product.dart';
import 'package:shopping_app/features/products/ui/widgets/show_image_product_in_card.dart';

class ProductCard extends StatelessWidget {
  //final product = products[index];
  final Product product;

  const ProductCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: ColorsManager.white,
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ImageProductsCard(product: product),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        product.title!,
                        style: TextStyles.font12lightGreyRegular,
                      ),
                      //  maybe romev it and but after price
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              const Icon(Icons.star,
                                  color: Colors.amber, size: 12),
                              Text(
                                product.rating!.rate.toString(),
                                style: const TextStyle(fontSize: 12),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                verticalSpace(4),
                Text('\$${product.price}',
                    style: TextStyles.font13blackRegular),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

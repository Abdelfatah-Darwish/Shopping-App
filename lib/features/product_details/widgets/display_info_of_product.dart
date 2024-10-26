import 'package:flutter/material.dart';
import 'package:shopping_app/core/theming/text_styles.dart';
import 'package:shopping_app/core/widgets/spacing.dart';
import 'package:shopping_app/features/products/data/model/model_from_extension/product_model/product.dart';

class DisplayInfoOfProduct extends StatelessWidget {
  final Product product;
  const DisplayInfoOfProduct({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          product.title!,
          style: TextStyles.font20BlackSemiBold,
        ),
        verticalSpace(10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '${product.price} L.E',
              style: TextStyles.font18PinkBold,
            ),
            Row(
              children: [
                const Icon(Icons.star, color: Colors.amber, size: 15),
                Text(
                  product.rating!.rate.toString(),
                  style: const TextStyle(fontSize: 15),
                ),
              ],
            ),
          ],
        ),
        verticalSpace(10),
        Text(product.description!),
        verticalSpace(10)
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:shopping_app/core/constant/sizes.dart';
import 'package:shopping_app/features/products/data/model/products_model.dart';
import 'package:shopping_app/features/products/ui/widgets/products_card.dart';

class ProductGrid extends StatelessWidget {
  final List<Product> products;

  const ProductGrid({Key? key, required this.products}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 800,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          itemCount: products.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: Tsize.gridViewSpacing,
            crossAxisSpacing: Tsize.gridViewSpacing,
            childAspectRatio: 0.60,
          ),
          itemBuilder: (BuildContext context, int index) {
            final product = products[index];
            return ProductCard(product: product);
          },
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shopping_app/core/constant/sizes.dart';
import 'package:shopping_app/features/product_details/screens/product_details_screen.dart';
import 'package:shopping_app/features/products/data/model/products_model.dart';
import 'package:shopping_app/features/products/ui/widgets/products_card.dart';

class ProductGrid extends StatelessWidget {
  final List<Product> products;

  const ProductGrid({Key? key, required this.products}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 800.h,
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
            return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          ProductDetailsScreen(product: product),
                    ),
                  );
                },
                child: ProductCard(product: product));
          },
        ),
      ),
    );
  }
}

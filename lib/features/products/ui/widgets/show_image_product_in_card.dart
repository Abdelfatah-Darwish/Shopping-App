import 'package:flutter/material.dart';
import 'package:shopping_app/features/products/data/model/products_model.dart';

class ImageProductsCard extends StatelessWidget {
  final Product product;
  const ImageProductsCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(12),
            topRight: Radius.circular(12),
          ),
          child: Image.network(
            product.image,
            fit: BoxFit.cover,
            width: double.infinity,
          ),
        ),
        Positioned(
          top: 8,
          left: 8,
          child: CircleAvatar(
            backgroundColor: Colors.white,
            child: IconButton(
              onPressed: () {},
              icon: Image.asset('assets/images/love.png'),
            ),
          ),
        ),
        Positioned(
          bottom: 4,
          right: 8,
          child: CircleAvatar(
            backgroundColor: Colors.white,
            child: IconButton(
              onPressed: () {},
              icon: Image.asset('assets/images/basket.png'),
            ),
          ),
        ),
      ],
    );
  }
}

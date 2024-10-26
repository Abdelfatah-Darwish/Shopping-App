import 'package:flutter/material.dart';
import 'package:shopping_app/core/theming/colors.dart';
import 'package:shopping_app/features/products/data/model/products_model.dart';

class ImageProductsCard extends StatefulWidget {
  final Product product;

  const ImageProductsCard({super.key, required this.product});

  @override
  State<ImageProductsCard> createState() => _ImageProductsCardState();
}

class _ImageProductsCardState extends State<ImageProductsCard> {
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
            widget.product.image,
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
            backgroundColor: ColorsManager.white,
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.add_shopping_cart),
            ),
          ),
        ),
      ],
    );
  }
}

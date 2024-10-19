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
  // List to track whether each item is selected
  late List<bool> isSelected;
  //late int index;

  @override
  void initState() {
    super.initState();
    // Initialize the isSelected list with false for each item
    isSelected = List<bool>.filled(widget.product.image.length, false);
  }

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
            backgroundColor: isSelected[widget.product.id]
                ? ColorsManager.pink
                : ColorsManager.white,
            child: IconButton(
              onPressed: () {
                setState(() {
                  // Toggle selection state
                  isSelected[widget.product.id] =
                      !isSelected[widget.product.id];
                });
              },
              icon: const Icon(Icons.add_shopping_cart),
            ),
          ),
        ),
      ],
    );
  }
}

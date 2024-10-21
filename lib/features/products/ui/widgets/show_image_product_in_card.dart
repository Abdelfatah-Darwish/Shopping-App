import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopping_app/core/theming/colors.dart';
import 'package:shopping_app/features/products/data/model/model_from_extension/product_model/product.dart';
import 'package:shopping_app/features/products/logic/product_selection_cubit/product_selection_cubit.dart'; // Import the Cubit

class ImageProductsCard extends StatelessWidget {
  final Product product;
  const ImageProductsCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductSelectionCubit, Map<int, bool>>(
      builder: (context, selectedProducts) {
        final isSelected = selectedProducts[product.id] ?? false;

        return Stack(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(12),
                topRight: Radius.circular(12),
              ),
              child: Image.network(
                product.image!,
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
                backgroundColor:
                    isSelected ? ColorsManager.pink : ColorsManager.white,
                child: IconButton(
                  onPressed: () {
                    context.read<ProductSelectionCubit>().toggleSelection(product.id!);
                  },
                  icon: const Icon(Icons.add_shopping_cart),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}

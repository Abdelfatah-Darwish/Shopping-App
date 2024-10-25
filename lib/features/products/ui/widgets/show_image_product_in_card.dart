import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopping_app/core/helpers/extensions.dart';
import 'package:shopping_app/core/local_database/sql_db.dart';
import 'package:shopping_app/core/routing/routes.dart';
import 'package:shopping_app/core/theming/colors.dart';
import 'package:shopping_app/features/products/data/model/model_from_extension/product_model/product.dart';
import 'package:shopping_app/features/products/logic/product_selection_cubit/product_selection_cubit.dart'; // Import the Cubit

class ImageProductsCard extends StatelessWidget {
  final Product product;
  const ImageProductsCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    Version sqlDb = Version();
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
                  onPressed: () async {
                    context
                        .read<ProductSelectionCubit>()
                        .toggleSelection(product.id!);

                    // Check if the product exists in the database
                    List<Map> existingProduct = await sqlDb.readSpecific(
                      'products',
                      where: 'id = ?',
                      whereArgs: [product.id],
                    );

                    if (existingProduct.isNotEmpty) {
                      // Product already exists in the database, do not insert again
                      print("Product is already in the cart.");
                      context.pushReplacementNamed(Routes.cartScreen);
                    } else {
                      // Product doesn't exist, insert it
                      int response = await sqlDb.insert(
                        'products',
                        {
                          'id': product.id,
                          'title': product.title,
                          'price': product.price,
                          'image': product.image,
                        },
                      );
                      if (response > 0) {
                        context.pushReplacementNamed(Routes.cartScreen);
                      }
                    }
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

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopping_app/core/networking/api/product_services.dart';

import 'package:shopping_app/core/theming/colors.dart';

import 'package:shopping_app/features/products/logic/cubit/products_cubit.dart';
import 'package:shopping_app/features/products/logic/cubit/products_state.dart';
import 'package:shopping_app/features/products/ui/widgets/grid_for_product.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProductCubit(
        ProductServices(Dio()),
      )..fetchProducts(),
      child: Container(
        width: double.infinity,
        child: BlocBuilder<ProductCubit, ProductState>(
          builder: (context, state) {
            if (state is ProductLoading) {
              return const Center(
                  child: CircularProgressIndicator(
                color: ColorsManager.pink,
              ));
            } else if (state is ProductLoaded) {
              return ProductGrid(products: state.products);
            } else if (state is ProductError) {
              return Center(child: Text('Error: ${state.message}'));
            } else {
              return Center(child: Text('No products available.'));
            }
          },
        ),
      ),
    );
  }
}

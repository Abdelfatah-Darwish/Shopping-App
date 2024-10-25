import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopping_app/core/DI/dependency_injection.dart';
import 'package:shopping_app/core/networking/api/product_services.dart';

import 'package:shopping_app/core/theming/colors.dart';
import 'package:shopping_app/features/products/data/repositories/products_repo.dart';

import 'package:shopping_app/features/products/logic/cubit/products_cubit.dart';
import 'package:shopping_app/features/products/logic/cubit/products_state.dart';
import 'package:shopping_app/features/products/logic/favorite_cubit/favorite_cubit.dart';
import 'package:shopping_app/features/products/logic/product_selection_cubit/product_selection_cubit.dart';
import 'package:shopping_app/features/products/ui/widgets/grid_for_product.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          //by using Dependency Injection
          create: (context) => getIt<ProductCubit>()..fetchProducts(),
          //Without using Dependency Injection.
          // create: (context) => ProductCubit(
          //   ProductsRepo(ProductServices(Dio())),
          // )..fetchProducts(),
        ),
        //this for cubit this cubit to store the selection item i want to add to cart.
        BlocProvider(
          create: (context) => ProductSelectionCubit(),
        ),

        //when you click the favorite button, it will toggle the icon state between Icons.favorite and Icons.favorite_border.
        BlocProvider(
          create: (context) => FavoriteCubit(),
        ),
      ],
      child: SizedBox(
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
              return Center(child: Text('Error: //${state.message}'));
            } else {
              return const Center(child: Text('No products available.'));
            }
          },
        ),
      ),
    );
  }
}

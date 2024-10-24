import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopping_app/core/networking/api/product_services.dart';
import 'package:shopping_app/features/products/data/model/products_model.dart';

import 'package:shopping_app/features/products/logic/cubit/products_state.dart';

class ProductCubit extends Cubit<ProductState> {
  final ProductServices productServices;
  List<Product> _allProducts = [];

  ProductCubit(this.productServices) : super(ProductInitial());

  Future<void> fetchProducts() async {
    emit(ProductLoading());

    try {
      final products = await productServices.getProducts();
      emit(ProductLoaded(products));
    } catch (e) {
      emit(ProductError(e.toString()));
    }
  }

  Future<void> fetchProductsByCategory(String category) async {
    emit(ProductLoading());

    try {
      final filteredProducts = _allProducts
          .where((product) => product.category == category)
          .toList();
      emit(ProductLoaded(filteredProducts)); // Emit filtered products
    } catch (e) {
      emit(ProductError(e.toString()));
    }
  }
}

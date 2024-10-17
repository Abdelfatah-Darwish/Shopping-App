import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopping_app/core/networking/api/product_services.dart';

import 'package:shopping_app/features/products/logic/cubit/products_state.dart';

class ProductCubit extends Cubit<ProductState> {
  final ProductServices productServices;

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
}

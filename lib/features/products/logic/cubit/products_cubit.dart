import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopping_app/core/networking/product_services.dart';
import 'package:shopping_app/features/prodcuts/logic/cubit/products_state.dart';

class ProductCubit extends Cubit<ProductState> {
  final ProductService productService;

  ProductCubit(this.productService) : super(ProductInitial());

  Future<void> fetchProducts() async {
    emit(ProductLoading());

    try {
      final products = await productService.getProducts();
      emit(ProductLoaded(products));
    } catch (e) {
      emit(ProductError(e.toString()));
    }
  }
}

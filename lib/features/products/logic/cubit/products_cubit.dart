import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopping_app/features/products/data/repositories/products_repo.dart';
import 'package:shopping_app/features/products/logic/cubit/products_state.dart';

class ProductCubit extends Cubit<ProductState> {
  final ProductsRepo productsRepo;

  ProductCubit(this.productsRepo) : super(ProductInitial());

  Future<void> fetchProducts() async {
    emit(ProductLoading());

    try {
      final products = await productsRepo.getAllProducts();
      emit(ProductLoaded(products));
    } catch (e) {
      emit(ProductError(e.toString()));
    }
  }
}

import 'package:bloc/bloc.dart';
import 'package:shopping_app/core/networking/api/product_services.dart';

import 'package:shopping_app/features/addNewProducts/logic/cubit/add_product_state.dart';
import 'package:shopping_app/features/products/data/model/products_model.dart';

class AddProductCubit extends Cubit<AddProductState> {
  final ProductServices apiService;

  AddProductCubit(this.apiService) : super(ProductInitial());

  Future<void> addProduct(Product product) async {
    try {
      emit(ProductLoading());
      final newProduct = await apiService.createProduct(product);
      emit(ProductAdded(newProduct));
    } catch (e) {
      emit(const ProductError("Failed to add product"));
    }
  }
}

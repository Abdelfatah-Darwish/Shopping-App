import 'package:shopping_app/features/products/data/model/model_from_extension/product_model/product.dart';

abstract class CategoryState {}

class CategoryInitial extends CategoryState {}

class CategoryLoading extends CategoryState {}

class CategoryLoaded extends CategoryState {
  final List<Product> products;

  CategoryLoaded(this.products);
}

class CategoryError extends CategoryState {
  final String message;

  CategoryError(this.message);
}

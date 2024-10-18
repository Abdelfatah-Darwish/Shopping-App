import 'package:equatable/equatable.dart';

import '../../../products/data/model/products_model.dart';

abstract class AddProductState extends Equatable {
  const AddProductState();

  @override
  List<Object> get props => [];
}

class ProductInitial extends AddProductState {}

class ProductLoading extends AddProductState {}

class ProductAdded extends AddProductState {
  final Product product;

  const ProductAdded(this.product);

  @override
  List<Object> get props => [product];
}

class ProductError extends AddProductState {
  final String message;

  const ProductError(this.message);

  @override
  List<Object> get props => [message];
}

// import 'package:bloc/bloc.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';

// part 'product_selection_state.dart';
// part '../cubit/product_selection_cubit.freezed.dart';

// class ProductSelectionCubit extends Cubit<ProductSelectionState> {
//   ProductSelectionCubit() : super(ProductSelectionState.initial());
// }

import 'package:bloc/bloc.dart';

class ProductSelectionCubit extends Cubit<Map<int, bool>> {
  ProductSelectionCubit() : super({});

  void toggleSelection(int productId) {
    final currentSelection = state[productId] ?? false;
    emit({...state, productId: !currentSelection});
  }
}


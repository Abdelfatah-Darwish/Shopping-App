// selection_cubit.dart

import 'package:flutter_bloc/flutter_bloc.dart';
import 'selection_state.dart';

class SelectionCubit extends Cubit<SelectionState> {
  final List<Map> products; // Pass the products to the cubit

  SelectionCubit({required this.products}) : super(SelectionState(selectedItems: {}, totalPrice: 0.0));

  void toggleSelection(int index) {
    final newSelectedItems = Map<int, bool>.from(state.selectedItems);
    bool isSelected = !(state.selectedItems[index] ?? false); // Toggle the selection

    // Update total price
    double newTotalPrice = state.totalPrice;
    double productPrice = double.tryParse(products[index]["price"]) ?? 0.0;

    if (isSelected) {
      newTotalPrice += productPrice;
    } else {
      newTotalPrice -= productPrice;
    }

    newSelectedItems[index] = isSelected;
    emit(state.copyWith(selectedItems: newSelectedItems, totalPrice: newTotalPrice));
  }

  bool isSelected(int index) {
    return state.selectedItems[index] ?? false;
  }
}

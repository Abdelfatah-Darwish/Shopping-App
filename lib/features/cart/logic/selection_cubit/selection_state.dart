// selection_state.dart

class SelectionState {
  final Map<int, bool> selectedItems;
  final double totalPrice;

  SelectionState({required this.selectedItems, required this.totalPrice});

  SelectionState copyWith({Map<int, bool>? selectedItems, double? totalPrice}) {
    return SelectionState(
      selectedItems: selectedItems ?? this.selectedItems,
      totalPrice: totalPrice ?? this.totalPrice,
    );
  }
}

// selection_state.dart

class SelectionState {
  final Map<int, bool> selectedItems;

  SelectionState({required this.selectedItems});

  SelectionState copyWith({Map<int, bool>? selectedItems}) {
    return SelectionState(
      selectedItems: selectedItems ?? this.selectedItems,
    );
  }
}

// selection_cubit.dart

import 'package:flutter_bloc/flutter_bloc.dart';
import 'selection_state.dart';

class SelectionCubit extends Cubit<SelectionState> {
  SelectionCubit() : super(SelectionState(selectedItems: {}));

  void toggleSelection(int index) {
    final newSelectedItems = Map<int, bool>.from(state.selectedItems);
    newSelectedItems[index] = !(state.selectedItems[index] ?? false); // Toggle the selection
    emit(state.copyWith(selectedItems: newSelectedItems));
  }

  bool isSelected(int index) {
    return state.selectedItems[index] ?? false;
  }
}

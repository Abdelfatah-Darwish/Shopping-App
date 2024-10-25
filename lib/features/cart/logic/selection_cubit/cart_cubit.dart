import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

class CartCubit extends Cubit<Map<int, bool>> {
  CartCubit() : super({});

  void toggleSelection(int index) {
    final newState = Map<int, bool>.from(state);
    newState[index] = !(state[index] ?? false); // Toggle the selection
    emit(newState);
  }

  bool isSelected(int index) {
    return state[index] ?? false;
  }
}

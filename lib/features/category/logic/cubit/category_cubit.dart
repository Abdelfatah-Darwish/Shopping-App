import 'package:bloc/bloc.dart';

class CategoryCubit extends Cubit<int> {
  int selectedIndex = 1;
  CategoryCubit() : super(1);

  void updateIndex(int index) {
    selectedIndex = index;
    emit(index);
  }
}

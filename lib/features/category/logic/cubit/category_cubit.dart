import 'package:bloc/bloc.dart';

class CategoryCubit extends Cubit<int> {
  int selectedIndex = 0;
  CategoryCubit() : super(0);

  void updateIndex(int index) {
    selectedIndex = index;
    emit(index);
  }
}

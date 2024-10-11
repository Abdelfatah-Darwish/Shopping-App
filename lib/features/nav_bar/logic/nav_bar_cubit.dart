import 'package:bloc/bloc.dart';

class NavBarCubit extends Cubit<int> {
  int selectedIndex = 0;
  NavBarCubit() : super(0);

  void updateIndex(int index) {
    selectedIndex = index;
    emit(index);
  }
}

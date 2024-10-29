import 'package:flutter_bloc/flutter_bloc.dart';

class FavoriteCubit extends Cubit<Map<int, bool>> {
  FavoriteCubit() : super({});

  void toggleFavorite(int productId) {
    final currentFavoriteStatus = state[productId] ?? false;
    emit({...state, productId: !currentFavoriteStatus});
  }
}

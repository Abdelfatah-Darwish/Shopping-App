import 'package:bloc/bloc.dart';
import 'package:shopping_app/core/constant/strings.dart';
import 'package:shopping_app/features/dark_light/data/models/enums/theme_state.dart';

part 'app_theme_state.dart';

class AppThemeCubit extends Cubit<AppThemeState> {
  AppThemeCubit() : super(AppThemeInitial());

  changeTheme(ThemeState state) {
    switch (state) {
      case ThemeState.Initial:
        if (sharedPreferences!.getString('theme') != null) {
          if (sharedPreferences!.getString('theme') == 'l') {
            emit(AppThemeLight());
          } else {
            emit(AppThemeDark());
          }
        }
        break;
      case ThemeState.Light:
        sharedPreferences!.setString('theme', 'l');
        emit(AppThemeLight());
        break;
      case ThemeState.Dark:
        sharedPreferences!.setString('theme', 'd');
        emit(AppThemeDark());
        break;
      default:
    }
  }
}

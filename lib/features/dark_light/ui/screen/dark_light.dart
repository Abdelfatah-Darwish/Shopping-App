import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shopping_app/core/widgets/text_button.dart';
import 'package:shopping_app/delete_this_after_merge/theming/text_styles.dart';
import 'package:shopping_app/features/dark_light/data/models/enums/theme_state.dart';
import 'package:shopping_app/features/dark_light/logic/cubit/app_theme_cubit.dart';

class DarkLight extends StatefulWidget {
  const DarkLight({super.key});

  @override
  State<DarkLight> createState() => _DarkLightState();
}

class _DarkLightState extends State<DarkLight> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dark-light"),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 200.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            AppTextButton(
              buttonText: 'Dark',
              textStyle: TextStyles.font12BlueRegular,
              onPressed: () {
                BlocProvider.of<AppThemeCubit>(context)
                    .changeTheme(ThemeState.Dark);
              },
            ),
            AppTextButton(
              buttonText: 'Light',
              textStyle: TextStyles.font12BlueRegular,
              onPressed: () {
                BlocProvider.of<AppThemeCubit>(context)
                    .changeTheme(ThemeState.Light);
              },
            ),
          ],
        ),
      ),
    );
  }
}

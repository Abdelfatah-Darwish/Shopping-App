import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shopping_app/core/helpers/extensions.dart';
import 'package:shopping_app/core/routing/routes.dart';
import 'package:shopping_app/core/widgets/text_button.dart';
import 'package:shopping_app/delete_this_after_merge/theming/text_styles.dart';
import 'package:shopping_app/features/dark_light/data/models/enums/theme_state.dart';
import 'package:shopping_app/features/dark_light/logic/cubit/app_theme_cubit.dart';
import 'package:toggle_switch/toggle_switch.dart';

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
        leading: IconButton(
            onPressed: () {
              context.pushReplacementNamed(Routes.homeScreen);
            },
            icon: Image.asset(
              'assets/images/next.png',
              width: 20.w,
              height: 20.h,
            )),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 100.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Dark Light ?"),
            ToggleSwitch(
              minWidth: 90.0,
              initialLabelIndex: 1,
              cornerRadius: 20.0,
              activeFgColor: Colors.white,
              inactiveBgColor: Colors.grey,
              inactiveFgColor: Colors.white,
              totalSwitches: 2,
              labels: const ['Dark', 'Light'],
              activeBgColors: const [
                [Colors.pink],
                [Colors.pink]
              ],
              onToggle: (index) {
                print('switched to: $index');
                if (index == 0) {
                  BlocProvider.of<AppThemeCubit>(context)
                      .changeTheme(ThemeState.Dark);
                } else {
                  BlocProvider.of<AppThemeCubit>(context)
                      .changeTheme(ThemeState.Light);
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}

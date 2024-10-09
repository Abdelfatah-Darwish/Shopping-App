import 'package:flutter/material.dart';
import 'package:shopping_app/delete_this_after_merge/theming/colors.dart';
import 'package:shopping_app/delete_this_after_merge/theming/text_styles.dart';

class RememberMeCheckbox extends StatefulWidget {
  const RememberMeCheckbox({super.key});

  @override
  _RememberMeCheckboxState createState() => _RememberMeCheckboxState();
}

class _RememberMeCheckboxState extends State<RememberMeCheckbox> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      title: Text(
        "Remember me.",
        style: TextStyles.font14PinkRegular.copyWith(
          color: const Color(0xFF000000),
        ),
      ),
      value: _isChecked,
      activeColor: ColorsManager.pink, // Set the checked color to pink
      checkColor: Colors.white, // The color of the check mark
      controlAffinity: ListTileControlAffinity.leading, // Checkbox on the left
      onChanged: (bool? value) {
        setState(() {
          _isChecked = value!;
        });
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:workshop_2023/theme/colors.dart';
import 'package:workshop_2023/theme/textStyles.dart';

class OldPeopleBottomAppBar extends StatelessWidget {
  const OldPeopleBottomAppBar(this.pressed, this.title, {super.key});

  final Function() pressed;
  final String title;

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      padding: EdgeInsets.zero,
      elevation: 0,
      height: 70,
      color: red,
      child: SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          onPressed: pressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: red,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
          ),
          child: Text(title, style: buttonTextStyle),
        ),
      ),
    );
  }
}

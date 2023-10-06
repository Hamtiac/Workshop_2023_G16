import 'package:flutter/material.dart';
import '../theme/colors.dart';
import '../theme/textStyles.dart';

class GenericButton extends StatelessWidget {
  const GenericButton({super.key, required this.color, required this.title});

  final Color color;
  final String title;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          padding: const EdgeInsets.symmetric(vertical: 10),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(5)),
          ),
        ),
        child: Center(
          child: Text(
            title,
            style: buttonTextStyle,
          ),
        ));
  }
}
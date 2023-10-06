import 'package:flutter/material.dart';
import 'package:workshop_2023/theme/colors.dart';
import 'package:workshop_2023/theme/textStyles.dart';

class GenericOutilnedButton extends StatefulWidget {
  const GenericOutilnedButton({super.key, required this.color, required this.buttonTitle, required this.onPressed, required this.isSelected});

  final Color color;
  final String buttonTitle;
  final bool isSelected;
  final VoidCallback? onPressed;

  @override
  State<GenericOutilnedButton> createState() => _GenericOutilnedButtonState();
}

class _GenericOutilnedButtonState extends State<GenericOutilnedButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: OutlinedButton(
        onPressed: widget.onPressed,
        style: ButtonStyle(
            backgroundColor: widget.isSelected ? MaterialStatePropertyAll(widget.color) : const MaterialStatePropertyAll(Colors.transparent),
            overlayColor: MaterialStatePropertyAll(widget.color),
            side: MaterialStatePropertyAll(BorderSide(color: widget.color, width: 2.0)),
            shape: const MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5))))),
        child: Container(
          height: 75,
          width: double.infinity,
          child: Center(
            child: Text(
              widget.buttonTitle,
              style: buttonTextStyle.copyWith(color: title),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:workshop_2023/theme/colors.dart';
import 'package:workshop_2023/theme/textStyles.dart';

class TextFieldLogin extends StatelessWidget {
  const TextFieldLogin({super.key, required this.controller});
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Veuillez remplir ce champ';
        }
        if (value != "papi") {
          return "votre identifiant n'éxiste pas";
        }
        return null;
      },
      controller: controller,
      // todo mettre les font...
      style: textFieldTextStyle,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        fillColor: Colors.transparent,
        filled: true,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(5), borderSide: BorderSide(color: yellow)),
        errorBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(5), borderSide: BorderSide(color: red)),
        enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(5), borderSide: BorderSide(color: yellow)),
        focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(5), borderSide: BorderSide(color: yellow)),
        focusedErrorBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(5), borderSide: BorderSide(color: red)),
        hintText: "votre identifiant",
        hintStyle: textFieldTextStyle,
      ),
    );
  }
}

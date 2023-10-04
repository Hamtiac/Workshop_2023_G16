import 'package:flutter/material.dart';
import 'package:workshop_2023/theme/colors.dart';
import 'package:workshop_2023/theme/textStyles.dart';

class TextFieldPassword extends StatefulWidget {
  const TextFieldPassword({super.key, required this.controller});

  final TextEditingController controller;

  @override
  State<TextFieldPassword> createState() => _TextFieldPasswordState();
}

class _TextFieldPasswordState extends State<TextFieldPassword> {
  bool _passwordVisible = false;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Veuillez remplir ce champ';
        }
        if (value != "") {
          return "votre mot de passe n'est pas le bon";
        }
        return null;
      },
      controller: widget.controller,
      // todo mettre les font...
      style: textFieldTextStyle,
      obscureText: !_passwordVisible,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        fillColor: Colors.transparent,
        filled: true,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(5), borderSide: BorderSide(color: yellow)),
        errorBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(5), borderSide: BorderSide(color: red)),
        enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(5), borderSide: BorderSide(color: yellow)),
        focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(5), borderSide: BorderSide(color: yellow)),
        focusedErrorBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(5), borderSide: BorderSide(color: red)),
        hintText: "Mot de passe",
        hintStyle: textFieldTextStyle,
        // show/hide text
        suffixIcon: IconButton(
          icon: Icon(
            _passwordVisible ? Icons.visibility_off : Icons.visibility,
            color: content,
          ),
          onPressed: () {
            setState(
              () {
                _passwordVisible = !_passwordVisible;
              },
            );
          },
        ),
      ),
    );
  }
}

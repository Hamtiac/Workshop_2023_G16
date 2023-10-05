import 'package:flutter/material.dart';
import 'package:workshop_2023/theme/colors.dart';
import 'package:workshop_2023/theme/textStyles.dart';

class HomePageOld extends StatelessWidget {
  const HomePageOld({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Bienvenue Philippe Didier",
          style: appBarTitle,
        ),
        backgroundColor: yellow,
      ),
    );
  }
}

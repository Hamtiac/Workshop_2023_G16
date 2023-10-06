import 'package:flutter/material.dart';
import 'package:workshop_2023/globals/asset.dart';
import 'package:workshop_2023/pages/login/textFieldLogin.dart';
import 'package:workshop_2023/pages/login/textFieldPassword.dart';
import 'package:workshop_2023/pages/oldPeople/homePageOld.dart';
import 'package:workshop_2023/pages/youngPeople/acitvityPage.dart';
import 'package:workshop_2023/theme/colors.dart';
import 'package:workshop_2023/widgets/buttons/genericButton.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final Key = GlobalKey<FormState>();
    TextEditingController identifiant = TextEditingController();
    TextEditingController motDePasse = TextEditingController();

    return Scaffold(
      backgroundColor: background,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(30, 100, 30, 35),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  decoration: const BoxDecoration(image: DecorationImage(image: AssetImage(genoliLogo))),
                  width: 250,
                  height: 166,
                ),
                const SizedBox(height: 100),
                Form(
                  key: Key,
                  child: Column(
                    children: [
                      TextFieldLogin(controller: identifiant),
                      const SizedBox(height: 20),
                      TextFieldPassword(controller: motDePasse),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        height: 230,
        color: Colors.transparent,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              GenericButton(title: 'Me connecter en tant que "junior"', color: yellow, onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => ActivityPage()))),
              const SizedBox(height: 10),
              GenericButton(
                title: 'Me connecter en tant que "senior"',
                color: red,
                onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => const HomePageOld())),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

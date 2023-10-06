import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:workshop_2023/pages/oldPeople/bottomAppBar.dart';
import 'package:workshop_2023/theme/colors.dart';
import 'package:workshop_2023/theme/textStyles.dart';
import 'package:workshop_2023/widgets/buttons/genericButton.dart';

class activityPlacePage extends StatelessWidget {
  const activityPlacePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title, style: appBarTitle),
        backgroundColor: yellow,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_rounded, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Column(
        children: [
          Container(
            color: Colors.red,
            height: 200,
            width: double.infinity,
          ),
          Container(
            height: 75,
            width: double.infinity,
            decoration: BoxDecoration(color: green, borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(5), bottomRight: Radius.circular(5))),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 15, width: double.infinity),
                Text("rendez vous :", style: appBarTitle),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: OldPeopleBottomAppBar(() {}, "Continuer"),
    );
  }
}

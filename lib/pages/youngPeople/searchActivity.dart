import 'package:flutter/material.dart';
import 'package:workshop_2023/pages/login/textFieldLogin.dart';
import 'package:workshop_2023/pages/youngPeople/searchTextField.dart';
import 'package:workshop_2023/theme/colors.dart';
import 'package:workshop_2023/theme/textStyles.dart';
import 'package:workshop_2023/widgets/buttons/genericOutlinedButton.dart';
import 'package:workshop_2023/widgets/cards/activityCardYoung.dart';

import 'activityInfo.dart';

class SearchActivityPage extends StatefulWidget {
  const SearchActivityPage({super.key});

  State<SearchActivityPage> createState() => _SearchActivityPage();
}

class _SearchActivityPage extends State<SearchActivityPage> {
  // bool showExtActivities = true;
  // bool showIntActivities = false;

  bool isExt = true;

  TextEditingController search = TextEditingController();

  String tmpImageString =
      "https://media.istockphoto.com/id/900816038/fr/photo/personnel-travaillant-derri%C3%A8re-le-comptoir-%C3%A0-caf%C3%A9-bien-remplie.jpg?s=612x612&w=0&k=20&c=P0Vhl1eCuG6EoNiWQqWcgTy0zTlPiRdOhPMlf7CqIMw=";

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () => Navigator.of(context).pop(), icon: const Icon(Icons.arrow_back_ios_new_rounded)),
        title: Text(
          'Chercher une activité',
          style: appBarTitle,
        ),
        backgroundColor: yellow,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: SearchTextField(controller: search),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  width: 175,
                  child: GenericOutilnedButton(
                    color: green,
                    buttonTitle: 'Extérieur',
                    onPressed: () {
                      setState(() {
                        isExt = !isExt;
                      });
                    },
                    isSelected: isExt,
                  ),
                ),
                SizedBox(
                  width: 175,
                  child: GenericOutilnedButton(
                    color: green,
                    buttonTitle: 'Intérieur',
                    onPressed: () {
                      setState(() {
                        isExt = !isExt;
                      });
                    },
                    isSelected: !isExt,
                  ),
                )
              ],
            ),
            const SizedBox(height: 10),
            Visibility(
              visible: isExt,
              child: Column(
                children: [
                  ActivityCardYoung(
                    activitiesName: 'Balade en forêt avec Philippe-Didier',
                    Image: tmpImageString,
                    onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => ActivityInfo(title: "titre de l'activité"))),
                  ),
                  ActivityCardYoung(
                    activitiesName: 'Sortie au cinéma avec Martine',
                    Image: tmpImageString,
                    onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => ActivityInfo(title: "titre de l'activité"))),
                  ),
                ],
              ),
            ),
            Visibility(
                visible: !isExt,
                child: Column(
                  children: [
                    ActivityCardYoung(
                      activitiesName: 'Raclette chez Gérard',
                      Image: tmpImageString,
                      onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => ActivityInfo(title: "titre de l'activité"))),
                    ),
                    ActivityCardYoung(
                      activitiesName: 'Soirée Betflix chez Irène',
                      Image: tmpImageString,
                      onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => ActivityInfo(title: "titre de l'activité"))),
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}

// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:workshop_2023/theme/colors.dart';
import 'package:workshop_2023/theme/textStyles.dart';
import 'package:workshop_2023/widgets/buttons/genericButton.dart';
import 'package:workshop_2023/widgets/chooseCard.dart';

class HomePageOld extends StatelessWidget {
  const HomePageOld({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Bienvenue Philippe Didier",
                style: appBarTitle,
              ),
              CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.red,
                  child: IconButton(
                      onPressed: null, icon: Icon(Icons.person_2_outlined)))
            ],
          ),
          backgroundColor: yellow,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ChooseCard(
                activitiesName: "Je veux sortir !",
                activitieImage:
                    "https://media-cdn.tripadvisor.com/media/photo-s/15/6d/92/a6/inside.jpg",
              ),
              ChooseCard(
                activitiesName: "Je veux avoir de la visite !",
                activitieImage:
                    "https://img.freepik.com/photos-gratuite/belle-photo-du-sentier-du-parc-entoure-nature-incroyable_181624-30887.jpg?size=626&ext=jpg",
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: GenericButton(color: red, title: "Ma messagerie"),
              )

              // ),
            ],
          ),
        ));
  }
}

import 'package:flutter/material.dart';
import 'package:workshop_2023/pages/youngPeople/activityInfo.dart';
import 'package:workshop_2023/pages/youngPeople/searchActivity.dart';
import 'package:workshop_2023/theme/colors.dart';
import 'package:workshop_2023/theme/textStyles.dart';
import 'package:workshop_2023/widgets/buttons/genericButton.dart';
import 'package:workshop_2023/widgets/cards/activityCardYoung.dart';

class ActivityPage extends StatefulWidget {
  State<ActivityPage> createState() => _ActivityPageState();
}

class _ActivityPageState extends State<ActivityPage> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: yellow,
        title: Text(
          'Hello Melanie !',
          style: appBarTitle,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.email, color: white),
            color: red,
          )
        ],
      ),
      body: Center(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: GenericButton(
                    color: yellow,
                    title: "Rechercher une activitée",
                    onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => const SearchActivityPage())),
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    'Liste des dernières activitées\nproposées :',
                    style: appBarTitle.copyWith(fontSize: 20),
                  ),
                )
              ],
            ),
            Column(
              children: [
                ActivityCardYoung(
                  onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => ActivityInfo(title: "titre de l'activité"))),
                  activitiesName: 'Dîner à la maison chez Philippe-Didier',
                  Image:
                      "https://media.istockphoto.com/id/900816038/fr/photo/personnel-travaillant-derri%C3%A8re-le-comptoir-%C3%A0-caf%C3%A9-bien-remplie.jpg?s=612x612&w=0&k=20&c=P0Vhl1eCuG6EoNiWQqWcgTy0zTlPiRdOhPMlf7CqIMw=",
                ),
                ActivityCardYoung(
                  onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => ActivityInfo(title: "titre de l'activité"))),
                  activitiesName: 'Dîner à la maison chez Philippe-Didier',
                  Image:
                      "https://media.istockphoto.com/id/900816038/fr/photo/personnel-travaillant-derri%C3%A8re-le-comptoir-%C3%A0-caf%C3%A9-bien-remplie.jpg?s=612x612&w=0&k=20&c=P0Vhl1eCuG6EoNiWQqWcgTy0zTlPiRdOhPMlf7CqIMw=",
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

List<Widget> widgetList = List<Widget>.empty(growable: true);

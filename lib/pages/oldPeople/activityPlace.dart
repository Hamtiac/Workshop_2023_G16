import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:workshop_2023/pages/oldPeople/bottomAppBar.dart';
import 'package:workshop_2023/theme/colors.dart';
import 'package:workshop_2023/theme/textStyles.dart';
import 'package:workshop_2023/widgets/buttons/genericButton.dart';
import 'package:workshop_2023/widgets/buttons/genericOutlinedButton.dart';

class ActivityPlacePage extends StatefulWidget {
  const ActivityPlacePage({super.key, required this.title});

  final String title;

  @override
  State<ActivityPlacePage> createState() => _ActivityPlacePageState();
}

class _ActivityPlacePageState extends State<ActivityPlacePage> {
  final List<int> list = List.generate(8, (i) => i);
  final List<bool> _selected = List.generate(8, (i) => false);
  final List<String> tileName = [
    "Chez moi",
    "Lieu public le plus proche",
    "Coffee club montpellier",
    "deli’s coffee",
    "café cours",
    "french coffee shop",
    "nin café",
    "lami coffee",
  ];
  final List<String> address = [
    "cafe du commerce, 12 rue des lilas 34000 Montpellier",
    "12 Rue Saint-Guilhem, 34000 Montpellier",
    "4 Rue du Bras de Fer, 34000 Montpellier",
    "2 Rue de la Carbonnerie, 34000 Montpellier",
    "6 Rue Jacques d'Aragon, 34000 Montpellier",
    "28 Rue Foch, 34000 Montpellier",
    "3 Pl. Jean Jaurès, 34000 Montpellier",
    "1 Rue Draperie Rouge, 34000 Montpellier",
    "5 Pl. de la Canourgue, 34000 Montpellier",
  ];

  String displayedAddress = "cafe du commerce, 12 rue des lilas 34000 Montpellier";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      appBar: AppBar(
        title: Text(widget.title, style: appBarTitle),
        backgroundColor: yellow,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_rounded, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      "https://www.liberation.fr/resizer/_uqwXAWMSwtBhcR4S2oCaVQ9zSA=/600x0/filters:format(jpg):quality(70)/cloudfront-eu-central-1.images.arcpublishing.com/liberation/RHXB7GFTZ6IEHPFMTIDLCZR33A.png"),
                ),
              ),
              height: 200,
              width: double.infinity,
            ),
            Container(
              height: 75,
              width: double.infinity,
              decoration: BoxDecoration(color: green, borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(10), bottomRight: Radius.circular(10))),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Text(
                    displayedAddress,
                    style: buttonTextStyle,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 0, 30, 200),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 15, width: double.infinity),
                  Text("rendez vous :", style: appBarTitle),
                  SizedBox(
                    height: 340,
                    child: ListView.builder(
                      itemCount: 8,
                      itemBuilder: (context, i) => GenericOutilnedButton(
                        color: i <= 1 ? yellow : red,
                        buttonTitle: tileName[i],
                        onPressed: () {
                          for (var i = 0; i < _selected.length; i++) {
                            _selected[i] = false;
                          }
                          String test = address[i];
                          setState(() {
                            displayedAddress = test;
                            _selected[i] = !_selected[i];
                          });
                        },
                        isSelected: _selected[i],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: OldPeopleBottomAppBar(() {}, "Continuer"),
    );
  }
}

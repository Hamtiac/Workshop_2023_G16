import 'package:flutter/material.dart';
import 'package:workshop_2023/theme/colors.dart';
import 'package:workshop_2023/theme/textStyles.dart';
import 'package:workshop_2023/widgets/buttons/genericButton.dart';

class ActivityInfo extends StatefulWidget {
  final String title;

  ActivityInfo({super.key, required this.title});

  State<ActivityInfo> createState() => _ActivityInfoState();
}

class _ActivityInfoState extends State<ActivityInfo> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: yellow,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_rounded, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(
          widget.title,
          style: appBarTitle,
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 10),
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
                  const SizedBox(height: 20),
                  Center(
                    child: GenericButton(
                      color: yellow,
                      title: "Comment m\'y rendre ?",
                      onPressed: () {},
                    ),
                  ),
                  Center(
                    child: Container(
                      margin: EdgeInsets.only(top: 10),
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(border: Border.all(width: 1.0, color: red), borderRadius: BorderRadius.circular(5), color: Colors.transparent),
                      child: Text(
                        'Mardi 02/08/2023 de 14h à 18h',
                        style: TextStyle(color: red),
                      ),
                    ),
                  ),
                  const SizedBox(height: 40),
                  Text(
                    'Commentaires :',
                    style: textFieldTextStyle.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Je marche un peu lentement mais j\'adore discuter !',
                    style: textFieldTextStyle,
                  ),
                  const SizedBox(height: 40),
                  Text(
                    'Avec qui ?',
                    style: textFieldTextStyle.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                    "https://images.unsplash.com/photo-1596604820148-da737958af16?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8b2xkJTIwbWFuJTIwcG9ydHJhaXR8ZW58MHx8MHx8fDA%3D&w=1000&q=80"))),
                        height: 150,
                        width: 100,
                      ),
                      Column(children: [
                        Text(
                          'Philippe-Didier',
                          style: textFieldTextStyle,
                        ),
                        Text(
                          '72 ans',
                          style: textFieldTextStyle,
                        )
                      ])
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const SizedBox(height: 10),
                      Flexible(
                        child: Text(
                          'J’aime bien aller faire ma balade dominicale dans les parcs de Montpellier. En étant un ancien avocat, j’ai plein d’anecdote à raconter !',
                          style: textFieldTextStyle,
                          softWrap: true,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        height: 80,
        color: Colors.transparent,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              GenericButton(
                title: "Accepter l'activitée",
                color: red,
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}

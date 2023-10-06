import 'package:flutter/material.dart';
import 'package:workshop_2023/theme/textStyles.dart';

class ChooseCard extends StatelessWidget {
  final String activitiesName;
  final VoidCallback? onPressed;
  final String activitieImage;

  const ChooseCard({super.key, required this.activitiesName, required this.activitieImage, this.onPressed});

  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      borderRadius: BorderRadius.circular(5),
      child: Container(
        padding: EdgeInsets.all(10),
        width: 300,
        height: 200,
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: Container(
                width: 300,
                height: 200,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                        activitieImage,
                      ),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(5))),
                padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
              ),
            ),
            Container(
              width: 300,
              height: 50,
              margin: EdgeInsets.fromLTRB(0, 150, 0, 0),
              alignment: Alignment.centerLeft,
              color: Color.fromRGBO(24, 82, 5, 0.698),
              child: Container(
                  padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                  child: Text(
                    activitiesName,
                    style: chooseCard,
                  )),
            )
          ],
        ),
      ),
    );
  }
}

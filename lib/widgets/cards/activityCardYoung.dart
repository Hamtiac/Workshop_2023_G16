import 'package:flutter/material.dart';
import 'package:workshop_2023/theme/colors.dart';
import 'package:workshop_2023/theme/textStyles.dart';

class ActivityCardYoung extends StatelessWidget {
  const ActivityCardYoung({super.key, required this.activitiesName, required this.Image, this.onPressed});

  final String activitiesName;
  final String Image;
  final VoidCallback? onPressed;

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
                decoration: BoxDecoration(image: DecorationImage(image: NetworkImage(Image), fit: BoxFit.cover), borderRadius: const BorderRadius.all(Radius.circular(5))),
                padding: const EdgeInsets.symmetric(vertical: 10),
              ),
            ),
            Container(
              width: 300,
              height: 50,
              margin: EdgeInsets.fromLTRB(0, 150, 0, 0),
              alignment: Alignment.centerLeft,
              color: white.withOpacity(0.7),
              child: Container(
                  child: Center(
                child: Text(
                  activitiesName,
                  style: textFieldTextStyle.copyWith(fontSize: 12),
                ),
              )),
            )
          ],
        ),
      ),
    );
  }
}

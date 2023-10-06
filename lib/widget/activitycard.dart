import 'package:flutter/material.dart';
import '../globals/asset.dart';
import '../pages/activityinfo/activityinfo.dart';

class StackWidget extends StatelessWidget{
  final String activitiesName;

  const StackWidget({super.key, required this.activitiesName});

  Widget build(BuildContext context){
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => ActivityInfo(title: activitiesName,)));
      },
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
                      decoration: const BoxDecoration(image: DecorationImage(image: AssetImage(photoCafe), fit: BoxFit.cover), borderRadius: BorderRadius.all(Radius.circular(5))),
                      padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                    ),
                  ),
                  Container(
                    width: 300,
                    height: 50,
                    margin: EdgeInsets.fromLTRB(0, 150, 0, 0),
                    alignment: Alignment.centerLeft,
                    color: Color.fromRGBO(255, 255, 255, 0.7),
                    child: Container(
                      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child: Text(activitiesName)),
                  )
                ],
              ),
            ),
    );
  }
}


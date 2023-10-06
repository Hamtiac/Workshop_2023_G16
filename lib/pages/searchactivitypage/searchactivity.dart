import 'package:db_workshop/theme/colors.dart';
import 'package:db_workshop/theme/textStyles.dart';
import 'package:flutter/material.dart';
import '../../widget/activitycard.dart';

class SearchActivityPage extends StatefulWidget{

  State<SearchActivityPage> createState() => _SearchActivityPage();
}

class _SearchActivityPage extends State<SearchActivityPage>{
  bool showExtActivities = true;
  bool showIntActivities = false;


  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Chercher une activité', style: appBarTitle,),
        backgroundColor: yellow,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(padding: EdgeInsets.only(top: 10)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    OutlinedButton(
                      onPressed: (){
                      setState(() {
                        showExtActivities = !showExtActivities;
                      });
                    }, 
                    style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.white),
                      overlayColor: MaterialStatePropertyAll(green),
                      side: MaterialStatePropertyAll(BorderSide(color: green, width: 2.0)),
                      shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5))))
                    ),
                    child: Text('Extérieur', style: TextStyle(color: Colors.black),)),
                    OutlinedButton(onPressed: (){
                      setState(() {
                        showIntActivities = !showIntActivities;
                      });
                    }, 
                    style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.white),
                      overlayColor: MaterialStatePropertyAll(green),
                      side: MaterialStatePropertyAll(BorderSide(color: green, width: 2.0)),
                      shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5))))
                    ),
                    child: Text('Intérieur', style: TextStyle(color: Colors.black),))
                  ],
                ),
                Visibility(
                  visible: showExtActivities,
                  child: Column(
                    children: [
                      Padding(padding: EdgeInsets.all(10)),
                      StackWidget(activitiesName: 'Balade en forêt avec Philippe-Didier'),
                      StackWidget(activitiesName: 'Sortie au cinéma avec Martine')
                    ],
                  ),
                  ),
                  Visibility(
                    visible: showIntActivities,
                    child: Column(
                      children: [
                        Padding(padding: EdgeInsets.all(10)),
                        StackWidget(activitiesName: 'Raclette chez Gérard'),
                        StackWidget(activitiesName: 'Soirée Betflix chez Irène')
                      ],
                  )
                  )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
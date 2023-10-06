import 'package:db_workshop/theme/colors.dart';
import 'package:db_workshop/theme/textStyles.dart';
import 'package:db_workshop/widget/genericButton.dart';
import 'package:flutter/material.dart';
import '../../globals/asset.dart';

class ActivityInfo extends StatefulWidget{
  final String title;

  ActivityInfo({super.key, required this.title});
  
  State<ActivityInfo> createState() => _ActivityInfoState();
}

class _ActivityInfoState extends State<ActivityInfo>{
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: yellow,
        title: Text(widget.title, style: appBarTitle,),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child:  Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(padding: EdgeInsets.all(10)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(onPressed: () {},
                      style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(yellow),
                      shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5))))
                      ),
                      child: Text('Comment m\'y rendre ?',
                      style: TextStyle(color: Colors.black),
                      ),
                      ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(border: Border.all(width: 1.0, color: red), borderRadius: BorderRadius.circular(5), color: Colors.transparent),
                  child: Text('Mardi 02/08/2023 de 14h à 18h' ,style: TextStyle(color: red),),
                ),
                Padding(padding: EdgeInsets.all(10)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(padding: EdgeInsets.all(10)),
                    Text('Commentaires :')
                  ],
                ),
                Padding(padding: EdgeInsets.all(5)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(padding: EdgeInsets.all(10)),
                    Text('Je marche un peu lentement mais j\'adore discuter !')
                  ],
                ),
                SizedBox(height: 25,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(padding: EdgeInsets.all(10)),
                    Text('Avec qui ?')
                  ],
                ),
                Padding(padding: EdgeInsets.all(5)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    // Padding(padding: EdgeInsets.all(5)),
                    Container(
                      decoration: BoxDecoration(image: DecorationImage(image: AssetImage(photoVieux))),
                      height: 150,
                      width: 150,
                    ),
                    Column(
                      children: [Text('Philippe-Didier'),
                      Text('72 ans')]
                    )
                  ],
                ),
                Padding(padding: EdgeInsets.all(5)),
                Row(mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(padding: EdgeInsets.all(10)),
                  Flexible(
                    child: Text('J’aime bien aller faire ma balade dominicale dans les parcs de Montpellier. En étant un ancien avocat, j’ai plein d’anecdote à raconter !',
                    softWrap: true,),
                  )
                ],
                )
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        height: 75,
        color: Colors.transparent,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              GenericButton(title: "Accepter l'activitée", color: red),
            ],
          ),
        ),
      ),
    );
  }
}
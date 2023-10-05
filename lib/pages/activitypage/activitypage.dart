import 'package:flutter/material.dart';
import '../../globals/asset.dart';
import '../../widget/activitycard.dart';
import '../searchactivitypage/searchactivity.dart';

class ActivityPage extends StatefulWidget{


  State<ActivityPage> createState() => _ActivityPageState();
}

class _ActivityPageState extends State<ActivityPage>{


  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Hello Melanie !'),
        actions: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.email))
        ],
    ),
    body: Center(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center ,
            children: [
              Padding(padding: EdgeInsets.all(10),
              child: ElevatedButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => SearchActivityPage()));
              },
              style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.orange),
              shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5))))
              ),
              child: Text('Rechercher une activitée',
              style: TextStyle(color: Colors.black),
              ),
              )
              )
            ],
          )
          ,Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(padding: EdgeInsets.all(10),
              child: Text('Liste des dernières activitées proposées :'),)
            ],
          ),
          Column(
            children: [
              StackWidget(activitiesName: 'Dîner à la maison chez Philippe-Didier'),
              StackWidget(activitiesName: 'Dîner à la maison chez Philippe-Didier')
            ],
          ),
          ],
      ),
    ),
    );
  }
}

List<Widget> widgetList = List<Widget>.empty(growable: true);

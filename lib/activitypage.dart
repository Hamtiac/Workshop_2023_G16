import 'package:db_workshop/widget/activitycard.dart';
import 'package:flutter/material.dart';
import 'globals/asset.dart';

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
              child: ElevatedButton(onPressed: () {},
              style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.orange)),
              child: Text('Rechercher une activitée'),
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
              StackWidget(activityName: 'Dîner à la maison chez Philippe-Didier'),
              StackWidget(activityName: 'Dîner à la maison chez Philippe-Didier')
            ],
          ),
          ],
      ),
    ),
    );
  }
}

List<Widget> widgetList = List<Widget>.empty(growable: true);

import 'package:flutter/material.dart';
import 'package:workshop_2023/pages/login/login.dart';
import 'package:workshop_2023/pages/oldPeople/activityPlace.dart';
import 'package:workshop_2023/pages/youngPeople/acitvityPage.dart';
import 'dbprovider.dart';
import 'pages/youngPeople/searchActivity.dart';

void main() {
  runApp(const MyApp());
  dbinit();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: SearchActivityPage(),
    );
  }
}

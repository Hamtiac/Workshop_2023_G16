import 'package:flutter/material.dart';
import 'package:workshop_2023/pages/homePageOld.dart';
import 'package:workshop_2023/pages/login/login.dart';
import 'package:workshop_2023/widgets/chooseCard.dart';
import 'dbprovider.dart';

void main() {
  runApp(const MyApp());
  dbinit();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: HomePageOld(),
    );
  }
}

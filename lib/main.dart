import 'package:flutter/material.dart';
import 'package:hoseapp/screens/bottomNav.dart';
import 'package:hoseapp/screens/categories.dart';
import 'package:hoseapp/screens/confirm.dart';
import 'package:hoseapp/screens/home.dart';
import 'package:hoseapp/screens/insideClean.dart';
import 'package:hoseapp/screens/motorClean.dart';
import 'package:hoseapp/screens/myCar.dart';
import 'package:hoseapp/screens/o&iClean.dart';
import 'package:hoseapp/screens/outside.dart';
import 'package:hoseapp/screens/paymentMethod.dart';
import 'package:hoseapp/screens/tabbar.dart';
import 'package:hoseapp/screens/test.dart';
import 'package:hoseapp/screens/visaCard.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: BottomApp(),
    );
  }
}


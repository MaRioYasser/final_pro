import 'package:firebase_core/firebase_core.dart';
import 'package:first_version/Screens/registerDoctor.dart';
import 'package:first_version/Screens/signin.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'Screens/mainScreen.dart';



void main()  {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        home:  MainScreen(),
    );
  }
}

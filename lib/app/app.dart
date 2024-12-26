import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  MyApp._internal(); // named constructor

  static final MyApp _instance = MyApp._internal();

  factory MyApp() =>_instance;

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

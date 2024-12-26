import 'package:flutter/material.dart';
import 'homescreeen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: Homescreeen.routeName,
      routes: {
        Homescreeen.routeName: (context) => Homescreeen(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}

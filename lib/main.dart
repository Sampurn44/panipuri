import 'package:flutter/material.dart';
import 'package:panipuri/pages/intro.dart';
import 'package:panipuri/pages/menu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //title: 'Flutter Demo',
      home: Intro(),
      // routes: {
      //   '/intropage': (context) => const Intro(),
      // },
      routes: {
        '/intro': (context) => const Intro(),
        '/menupage': (context) => const Menu(),
      },
    );
  }
}

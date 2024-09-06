import 'package:flutter/material.dart';
import 'package:instagram/screens/home.dart';
import 'package:instagram/screens/navig.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Navig(),debugShowCheckedModeBanner: false,
    );
  }
}

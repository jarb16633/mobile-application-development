import 'package:flutter/material.dart';
import 'package:lab_10/problem1/favorite_actor.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Favorite Actor",
      home: Center(child: DemoPage(),)
    );
  }
}
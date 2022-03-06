import 'package:flutter/material.dart';
import 'package:lab10/lab9_ex3/faculty.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Faculty List",
      home: WidgetsDemo(),
    );
  }
}
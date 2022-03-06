import 'package:flutter/material.dart';
import 'package:lab_10/problem2/faculty_list.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "KKU Faculty",
      home: FacultyList(),
    );
  }
}
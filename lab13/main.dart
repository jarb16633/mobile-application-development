import 'package:mad_lab/lab13/lab14p1.dart';
import 'package:flutter/material.dart';
import './lab13p1.dart';
import 'lab13p2.dart';
import 'lab14p1.dart';

main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const FirstScreen(),
        '/second': (context) => const KKUPlaceInfo(),
        '/Restart': (context) => const RestartScreen(),
      },
    );
  }
}

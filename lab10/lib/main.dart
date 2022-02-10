import 'package:flutter/material.dart';
import 'package:lab10/listview.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "FABDemo",
      home: FabApp(),
    );
  }
}

class FabApp extends StatefulWidget {
  const FabApp({Key? key}) : super(key: key);

  @override
  _FabAppState createState() => _FabAppState();
}

class _FabAppState extends State<FabApp> {
  int i = 30;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Widget Exercise")),
      body: getListView(i),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        tooltip: "Add one more item",
        onPressed: () {
          setState(() {
            i++;
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text("Current number of the problems is $i")));
          });
        })
    );
  }
}
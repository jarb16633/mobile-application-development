import 'package:flutter/material.dart';

class FABDemo extends StatefulWidget {
  @override
  _FABDemoState createState() => _FABDemoState();
}

class _FABDemoState extends State<FABDemo> {
  int i = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      appBar: AppBar(
        title: const Text("Floating Action Button Demo")
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Floating action button pressed ${i} times",
              style: const TextStyle(
                fontSize: 20,
                color: Colors.black
              ),
            )
          ],
        )
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        backgroundColor: Colors.green,
        onPressed: () {
          setState(() {
            i++;
          });
        }),
    );
  }
}
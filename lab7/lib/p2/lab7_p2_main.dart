import 'package:flutter/material.dart';
import 'package:lab7/p2/basic_listview.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Basic List View Demo",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Widget Exercise"),
        ),
        body: BasicListView(),
      )
    )
  );
}
import 'package:flutter/material.dart';
import 'package:flutter/philanthropist.dart';

void main() {
  runApp(const myApp());
}

class myApp extends StatelessWidget {
  const myApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sahatsawat Exam Part 2',
      home: Scaffold(
          appBar: AppBar(
              title: const Text('Sahatsawat Exam Part 2')
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 10.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Phil()
                ],
              )
            ],
          )
      ),
    );
  }
}

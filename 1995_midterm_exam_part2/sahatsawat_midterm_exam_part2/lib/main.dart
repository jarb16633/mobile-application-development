import 'package:flutter/material.dart';

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
              const Text("The Biggest Philanthropist of All Time", style: TextStyle(fontSize: 20, color: Colors.red),),
              const SizedBox(height: 10.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.network("https://y4p4e3d2.rocketcdn.me/wp-content/uploads/2016/08/biggest-philanthropist-ever-400x274.jpg", height: 80, width: 130,),
                  SizedBox(width: 10,),
                  const Text("Andrew Carnegie", style: TextStyle(color: Colors.blue),),
                  SizedBox(width: 10,),
                  const Text("297.8 billion", style: TextStyle(color: Colors.green))
                ],
              )
            ],
          )
      ),
    );
  }
}

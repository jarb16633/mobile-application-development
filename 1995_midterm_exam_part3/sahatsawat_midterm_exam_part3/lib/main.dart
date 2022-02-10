import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key ? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Sahatsawat Midterm Exam Part 3",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Sahatsawat Midterm Exam Part 3"),
        ),
        body: ListView(
          padding: const EdgeInsets.all(8),
          children: <Widget>[
            ListTile(title: const Text("Andrew Carnegie"),
              leading: Image.network("https://www.carnegiecouncil.org/education/worksheets/ushistory/carnegie/biography/_res/id=Picture/andrew-carnegie-smiling.jpg", height: 70, width: 80,),
              trailing: const Icon(Icons.favorite),
              onTap: () =>
                ScaffoldMessenger.of(context).
                showSnackBar(const SnackBar(content: Text("He is one of the greatest investors"))),
            ),
            const SizedBox(height: 10,),
            ListTile(title: const Text("Bill Gates"),
              leading: Image.network("https://nairametrics.com/wp-content/uploads/2019/09/Bill-Gates.jpg?w=900", height: 70, width: 80,),
              trailing: const Icon(Icons.favorite_border),
              onTap: () =>
                ScaffoldMessenger.of(context).
                showSnackBar(const SnackBar(content: Text("He is one of the greatest investors"))),
            ),
            const SizedBox(height: 10,),
            ListTile(title: const Text("Warren Buffet"),
              leading: Image.network("https://i0.wp.com/properea.com/wp-content/uploads/2020/07/warren-buffet.jpeg?fit=1400%2C950&ssl=1", height: 70, width: 80,),
              onTap: () =>
                  ScaffoldMessenger.of(context).
                  showSnackBar(const SnackBar(content: Text("He is one of the greatest investors"))),
            )
          ],
        ),
      )
    );
  }
}
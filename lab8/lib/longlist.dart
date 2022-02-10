import 'package:flutter/material.dart';

class GetList extends StatelessWidget {
  final listitems = List<String>.generate(30, (index) => "Problem ${index + 1}");

  @override
  Widget build(BuildContext context) {
    const title = 'Widgets Exercise';

    return MaterialApp(
      title: title,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(title),
        ),
        body: ListView.builder(
          itemCount: listitems.length,
          itemBuilder: (context, index) {
            if (index.isOdd) {
              return ListTile(
                leading: const Icon(Icons.arrow_right),
                title: Text(listitems[index]),
                trailing: const Icon(Icons.star),
                onTap: () {
                  SnackBar snackBar = SnackBar(
                    content: Text("Problem ${index + 1} is my favourite"),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                },
              );
            } else {
              return ListTile(
                leading: const Icon(Icons.arrow_right),
                title: Text(listitems[index]),
                onTap: () {
                  SnackBar snackBar = SnackBar(
                    content: Text("Problem ${index + 1} is selected"),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                },
              );
            }
          },
        ),
      ),
    );
  }
}

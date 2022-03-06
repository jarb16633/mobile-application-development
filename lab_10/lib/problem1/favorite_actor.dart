import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DemoPage extends StatefulWidget {
  const DemoPage({Key? key}) : super(key: key);

  @override
  _DemoPageState createState() => _DemoPageState();
}

class _DemoPageState extends State<DemoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      body: Stack(
        alignment: const Alignment(0.05, -.85),
        children: [
          const CircleAvatar(
            backgroundImage: NetworkImage('https://m.media-amazon.com/images/M/MV5BNmNlNGU0ZDgtMDg3MS00ZGZmLTg4ZjMtYjMyZjVmNzlhNWIwXkEyXkFqcGdeQXVyMTE1MTYxNDAw._V1_.jpg'),
            radius: 120,
          ),
          Container(
            decoration: const BoxDecoration(
              color: Colors.black26,
            ),
            child: const Text(
              'Keanu Reeves',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: SizedBox(
                  height: 210,
                  child: Card(
                    child: Column(
                      children: const [
                        ListTile(
                          title: Text(
                            "Reeves's place",
                            style: TextStyle(fontWeight: FontWeight.w500),
                          ),
                          subtitle: Text('Beirut, Lebanon, 10999'),
                          leading: Icon(
                            Icons.home_work,
                            color: Colors.blue,
                          ),
                        ),
                        Divider(),
                        ListTile(
                          title: Text(
                            '(086) 906 2366',
                            style: TextStyle(fontWeight: FontWeight.w500),
                          ),
                          leading: Icon(
                            Icons.contact_phone_sharp,
                            color: Colors.blue,
                          ),
                        ),
                        ListTile(
                          title: Text('keanu_reeves@gmail.com'),
                          leading: Icon(
                            Icons.contact_mail,
                            color: Colors.blue,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.star, color: Colors.green[500]),
                  Icon(Icons.star, color: Colors.green[500]),
                  Icon(Icons.star, color: Colors.green[500]),
                  Icon(Icons.star, color: Colors.green[500]),
                  const Icon(Icons.star, color: Colors.black),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

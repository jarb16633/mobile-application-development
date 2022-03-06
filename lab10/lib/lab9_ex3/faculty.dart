import 'package:flutter/material.dart';

class FacultyList extends StatelessWidget {
  const FacultyList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    NetworkImage assetImage = const NetworkImage("https://image.dek-d.com/27/0407/0292/117552610");
    Image image = Image(image: assetImage, width: 300, height: 250);
    return Container(
      child: image,
      padding: const EdgeInsets.only(
        right: 10,
      ),
      margin: const EdgeInsets.only(
        top: 0,
      ),
    );
  }
}

class Button extends StatelessWidget {
  const Button({Key? key}) : super(key: key);

  void alertMsg(BuildContext context) {
    var alertDialog = const AlertDialog(
        title: Text("Confirmation"), content: Text("Submitting information"));

    showDialog(
        context: context, builder: (BuildContext context) => alertDialog);
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: Colors.lightGreen,
            padding: const EdgeInsets.all(12),
            textStyle: const TextStyle(fontSize: 30)),
        child: const Text("Submit", style: TextStyle(color: Colors.deepOrange)),
        onPressed: () => {alertMsg(context)},
      ),
    );
  }
}

class WidgetsDemo extends StatelessWidget {
  const WidgetsDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Layout Flutter Exercise by Sahatsawat'),),
      body: Container(
        padding: const EdgeInsets.only(left: 10, right: 10, top: 20),
        alignment: Alignment.center,
        color: Colors.white,
        child: Center(
          child: Column(
            children: <Widget>[
              Row(
                children: const <Widget>[
                  Expanded(
                    child: Center(
                      child: Text(
                        "Where is this picture?",
                        style: TextStyle(
                            decoration: TextDecoration.none,
                            fontFamily: 'Prompt',
                            fontSize: 25,
                            fontWeight: FontWeight.w700,
                            color: Colors.pink),
                      ),
                    ),
                  ),
                  SizedBox(width: 20.0),
                ],
                textDirection: TextDirection.ltr,
              ),
              const SizedBox(height: 40.0),
              const FacultyList(),
              const SizedBox(height: 50.0),
              Row(
                children: const <Widget>[
                  Expanded(
                    child: Center(
                      child: DecoratedBox(
                        decoration: BoxDecoration(color: Colors.orange),
                        child: Padding(
                          padding: EdgeInsets.only(
                              right: 19, left: 19, top: 22, bottom: 22),
                          child: Text(
                            "KhonKaen University",
                            textDirection: TextDirection.ltr,
                            style: TextStyle(
                                decoration: TextDecoration.none,
                                fontFamily: 'Prompt',
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                                color: Colors.black),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 20.0),
                  Expanded(
                      child: Center(
                        child: DecoratedBox(
                          decoration: BoxDecoration(color: Colors.purple),
                          child: Padding(
                            padding: EdgeInsets.only(
                                right: 15, left: 15, top: 22, bottom: 22),
                            child: Text(
                              "ChiangMai University",
                              textDirection: TextDirection.ltr,
                              style: TextStyle(
                                  decoration: TextDecoration.none,
                                  fontFamily: 'Prompt',
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black),
                            ),
                          ),
                        ),
                      )
                  )
                ],
                textDirection: TextDirection.ltr,
              ),
              const SizedBox(height: 40.0),
              Row(
                children: const <Widget>[
                  Expanded(
                    child: Center(
                      child: DecoratedBox(
                        decoration: BoxDecoration(color: Colors.pink),
                        child: Padding(
                          padding: EdgeInsets.only(
                              right: 10, left: 10, top: 14, bottom: 14),
                          child: Text(
                            "Chulalongkorn University",
                            textDirection: TextDirection.ltr,
                            style: TextStyle(
                                decoration: TextDecoration.none,
                                fontFamily: 'Prompt',
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                                color: Colors.black),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 20.0),
                  Expanded(
                      child: Center(
                        child: DecoratedBox(
                          decoration: BoxDecoration(color: Colors.blue),
                          child: Padding(
                            padding: EdgeInsets.only(
                                right: 24, left: 24, top: 23, bottom: 22),
                            child: Text(
                              "Mahidol University",
                              textDirection: TextDirection.ltr,
                              style: TextStyle(
                                  decoration: TextDecoration.none,
                                  fontFamily: 'Prompt',
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black),
                            ),
                          ),
                        ),
                      )
                  ),
                ],
                textDirection: TextDirection.ltr,
              ),
              //const Button()
            ],
          ),
        ),
      ),
    );
  }
}


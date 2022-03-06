import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size; // This size provide us total height and width of the screen
    return Container(
      height: size.height,
      width: double.infinity,
      child: Stack(
        children: <Widget>[Positioned(child: Image.asset(""))],
      ),
    );
  }
}

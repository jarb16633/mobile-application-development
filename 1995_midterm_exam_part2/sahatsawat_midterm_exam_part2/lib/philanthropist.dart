import 'package:flutter/material.dart';

class Phil extends StatelessWidget{
  final String name, url, money;

  const Phil(this.url, this.name, this.money);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.network(url),
        SizedBox(width: 10,),
        Text(name , style: TextStyle(color: Colors.blue),),
        SizedBox(width: 10,),
        Text(money, style: TextStyle(color: Colors.green))
      ],
    )
  }
}
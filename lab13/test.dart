import 'package:flutter/material.dart';
import 'lab15.dart';
import 'package:provider/provider.dart';

class MySlider extends StatefulWidget {
  const MySlider({Key? key}) : super(key: key);

  @override
  State<MySlider> createState() => _MySliderState();
}

class _MySliderState extends State<MySlider> {
  var _value = 0.5;

  void _onValue(double value) {
    setState(() {
      _value = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    final schedule = Provider.of<MySchedule>(context);

    return Slider(
        value: schedule.stateManagementValue,
        onChanged: (value) => schedule.stateManagementValue = value);
  }
}

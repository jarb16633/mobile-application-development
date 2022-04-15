import 'package:flutter/material.dart';

class MySchedule extends ChangeNotifier {
  double _stateManagementValue = 0;

  double get stateManagementValue => _stateManagementValue;

  set stateManagementValue(double value) {
    _stateManagementValue = value;
    notifyListeners();
  }
}

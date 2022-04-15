import 'package:flutter/material.dart';
import 'lab15.dart';
import 'package:provider/provider.dart';
import 'package:pie_chart/pie_chart.dart';

class RestartScreen extends StatefulWidget {
  const RestartScreen({Key? key}) : super(key: key);

  @override
  State<RestartScreen> createState() => _RestartScreenState();
}

class _RestartScreenState extends State<RestartScreen> {
  List<Color> colorList = [
    Colors.purple,
    Colors.red,
    Colors.green,
    Colors.blue
  ];

  @override
  Widget build(BuildContext context) {
    return Consumer<MySchedule>(
      builder: (context, schedule, _) {
        return Scaffold(
          body: Padding(
            padding: const EdgeInsets.only(
              top: 50.0,
            ),
            child: Column(
              children: <Widget>[
                Expanded(
                  child: PieChart(
                    dataMap: _createData(schedule.stateManagementValue),
                    chartRadius: MediaQuery.of(context).size.width / 1.5,
                    colorList: colorList,
                  ),
                ),
                Expanded(
                  child: Center(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/');
                      },
                      child: const Text('Restart'),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  static Map<String, double> _createData(double stateManagementValue) {
    Map<String, double> dataMap = Map();
    dataMap.putIfAbsent("key", () => stateManagementValue);
    dataMap.putIfAbsent("key2", () => 0.3);
    dataMap.putIfAbsent("key3", () => 0.1);
    dataMap.putIfAbsent("key4", () => 0.2);
    return dataMap;
  }
}

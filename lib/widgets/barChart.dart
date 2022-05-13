import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class BarChartWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BarChart(BarChartData(
      alignment: BarChartAlignment.center,
      maxY: 20,
      minY: -20,
      groupsSpace: 10,
      barTouchData: BarTouchData(enabled: true),
    ));
  }
}

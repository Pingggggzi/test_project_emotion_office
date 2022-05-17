import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:test_project_emotion/widgets/barData.dart';

class BarTitles {
  static SideTitles getTopBottomTitles() => SideTitles(
        showTitles: true,
        margin: 10,
        getTextStyles: (value) =>
            const TextStyle(color: Colors.black, fontSize: 14),
        getTitles: (double id) => BarData.barData
            .firstWhere((element) => element.id == id.toInt())
            .name,
      );

  static SideTitles getSideTitles() => SideTitles(
      showTitles: true,
      interval: BarData.interval.toDouble(),
      margin: 10,
      reservedSize: 40,
      getTextStyles: (value) =>
          const TextStyle(color: Colors.black, fontSize: 14),
      getTitles: (double value) => '${value.toDouble()}%');
}

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:test_project_emotion/widgets/barData.dart';
import 'package:test_project_emotion/widgets/barTitle.dart';

class BarChartWidget extends StatelessWidget {
  final double barWidth = 30;

  @override
  Widget build(BuildContext context) {
    return BarChart(
      BarChartData(
        alignment: BarChartAlignment.center,
        maxY: 100,
        minY: 0,
        groupsSpace: 20,
        barTouchData: BarTouchData(enabled: true),
        titlesData: FlTitlesData(
          bottomTitles: BarTitles.getTopBottomTitles(),
          leftTitles: BarTitles.getSideTitles(),
        ),
        gridData: FlGridData(
          checkToShowHorizontalLine: (value) => value % BarData.interval == 0,
          getDrawingHorizontalLine: (value) {
            return FlLine(color: Colors.black12, strokeWidth: 0.8);
          },
          // checkToShowVerticalLine: (value) => value == 5,
          // getDrawingVerticalLine: (value) {
          //   return FlLine(color: Colors.black12, strokeWidth: 0.8);
          // },
        ),
        borderData: FlBorderData(border: Border.all(color: Colors.black12)),
        barGroups: BarData.barData
            .map(
              (data) => BarChartGroupData(x: data.id, barRods: [
                BarChartRodData(
                    y: data.y,
                    width: barWidth,
                    colors: [data.color],
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(5),
                        topRight: Radius.circular(5)))
              ]),
            )
            .toList(),
      ),
    );
  }
}

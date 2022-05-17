import 'package:flutter/material.dart';
import 'package:test_project_emotion/widgets/barChartData.dart';

class BarData {
  static int interval = 20;

  static List<Data> barData = [
    Data(
      id: 0,
      name: '<20',
      y: 10,
      color: Color(0xff19bfff),
    ),
    Data(
      name: '21-30',
      id: 1,
      y: 20,
      color: Color(0xffff4d94),
    ),
    Data(
      name: '31-40',
      id: 2,
      y: 10,
      color: Color(0xff2bdb90),
    ),
    Data(
      name: '41-50',
      id: 3,
      y: 10,
      color: Color(0xffffdd80),
    ),
    Data(
      name: '>50',
      id: 4,
      y: 10,
      color: Color(0xff2bdb90),
    ),
  ];
}

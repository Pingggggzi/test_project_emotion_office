import 'package:flutter/material.dart';
import 'package:test_project_emotion/screens/login.dart';
import 'package:test_project_emotion/widgets/recording.dart';
// import 'package:test_project_emotion/widgets/video.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(builder: (context, snapshot) {
      return MaterialApp(
        home: Login(),
      );
    });
  }
}

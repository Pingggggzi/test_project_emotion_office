import 'package:flutter/material.dart';
import 'package:test_project_emotion/screens/homepage.dart';

class Jobprogress extends StatefulWidget {
  @override
  State<Jobprogress> createState() => _JobprogressState();
}

class _JobprogressState extends State<Jobprogress> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(Icons.arrow_back_ios_new),
            onPressed: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (ctx) => HomePage()));
            }),
        title: Text("Job Progress"),
        backgroundColor: Color.fromARGB(255, 52, 58, 64),
      ),
    );
  }
}

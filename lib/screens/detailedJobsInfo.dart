import 'package:flutter/material.dart';
import 'package:test_project_emotion/screens/homepage.dart';
import 'package:test_project_emotion/screens/jobs.dart';

class DetailedJobsInfo extends StatefulWidget {
  @override
  State<DetailedJobsInfo> createState() => _DetailedJobsInfoState();
}

class _DetailedJobsInfoState extends State<DetailedJobsInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(Icons.arrow_back_ios_new),
            onPressed: () {
              Navigator.of(context)
                  .pushReplacement(MaterialPageRoute(builder: (ctx) => Jobs()));
            }),
        title: Text("Tem"),
        backgroundColor: Color.fromARGB(255, 52, 58, 64),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:test_project_emotion/screens/employerHomepage.dart';
import 'package:test_project_emotion/screens/homepage.dart';

class Candidate extends StatefulWidget {
  @override
  State<Candidate> createState() => _CandidateState();
}

class _CandidateState extends State<Candidate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(Icons.arrow_back_ios_new),
            onPressed: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (ctx) => EmployerHomepage()));
            }),
        title: Text("Position Category"),
        backgroundColor: Color.fromARGB(255, 52, 58, 64),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:test_project_emotion/screens/dashboard.dart';

class CompanyDash extends StatefulWidget {
  @override
  State<CompanyDash> createState() => _CompanyDashState();
}

class _CompanyDashState extends State<CompanyDash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(Icons.arrow_back_ios_new),
            onPressed: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (ctx) => Dashboard()));
            }),
        title: Text("Companies"),
        backgroundColor: Color.fromARGB(255, 52, 58, 64),
      ),
    );
  }
}

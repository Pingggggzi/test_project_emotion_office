import 'package:flutter/material.dart';
import 'package:test_project_emotion/screens/profile.dart';

class ResumeSetting extends StatefulWidget {
  @override
  State<ResumeSetting> createState() => _ResumeSettingState();
}

class _ResumeSettingState extends State<ResumeSetting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(Icons.arrow_back_ios_new),
            onPressed: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (ctx) => Profile()));
            }),
        title: Text("Resume"),
        backgroundColor: Color.fromRGBO(50, 75, 205, 1),
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(20),
        child: Row(
          children: [
            Icon(Icons.upload),
          ],
        ),
      ),
    );
  }
}

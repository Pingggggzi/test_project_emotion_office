import 'package:file_picker/file_picker.dart';
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
        height: 100,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.black26),
        ),
        child: Row(
          children: [
            Column(
              children: [
                Icon(Icons.upload),
              ],
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              children: [Text('Choose File')],
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              children: [
                ElevatedButton(
                    onPressed: () async {
                      final result = await FilePicker.platform.pickFiles();
                    },
                    child: Text('Browse'))
              ],
            ),
          ],
        ),
      ),
    );
  }
}

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
        backgroundColor: Color.fromARGB(255, 52, 58, 64),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(30, 60, 30, 30),
            height: 35,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.black26),
            ),
            child: Row(
              children: [
                Column(
                  children: [
                    Container(
                        height: 33,
                        width: 35,
                        color: Colors.grey,
                        child: Icon(Icons.upload)),
                  ],
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  children: [
                    Container(
                      height: 30,
                      alignment: Alignment.center,
                      width: 208,
                      child: TextButton(
                        child: Text(
                          'Choose File',
                          style:
                              TextStyle(fontSize: 15, color: Colors.grey[800]),
                        ),
                        onPressed: () async {
                          final result = await FilePicker.platform.pickFiles();
                        },
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  children: [
                    Container(
                      color: Colors.grey,
                      alignment: Alignment.centerRight,
                      height: 33,
                      child: TextButton(
                        onPressed: () async {
                          final result = await FilePicker.platform.pickFiles();
                        },
                        child: Text(
                          'Browse',
                          style: TextStyle(fontSize: 15, color: Colors.black),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            margin: EdgeInsets.all(30),
            alignment: Alignment.bottomCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    TextButton(
                        onPressed: () {
                          Navigator.of(context).pushReplacement(
                              MaterialPageRoute(builder: (ctx) => Profile()));
                        },
                        child: Text(
                          'Cancel',
                          style: TextStyle(
                            fontSize: 16,
                            color: Color.fromRGBO(50, 75, 205, 1),
                          ),
                        ))
                  ],
                ),
                SizedBox(
                  width: 5,
                ),
                Column(
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        'Save',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              Color.fromRGBO(50, 75, 205, 1))),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

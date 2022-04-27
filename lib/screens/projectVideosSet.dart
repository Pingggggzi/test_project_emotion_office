import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:test_project_emotion/screens/profile.dart';
import 'package:test_project_emotion/widgets/projectVideosForm.dart';

class ProjectVideosSetting extends StatefulWidget {
  @override
  State<ProjectVideosSetting> createState() => _ProjectVideosSettingState();
}

class _ProjectVideosSettingState extends State<ProjectVideosSetting> {
  List<ProjectVideosForm> listVideos = [];
  addVideos() {
    listVideos.add(new ProjectVideosForm());
    setState(() {});
  }

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
        title: Text("Project Videos"),
        backgroundColor: Color.fromARGB(255, 52, 58, 64),
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 80,
                  decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(width: 1, color: Colors.black26)),
                  ),
                  child: Row(
                    children: [
                      Flexible(
                        child: Text(
                          '*Noted that larger files take a longer time to save.',
                          style: TextStyle(color: Colors.red, fontSize: 15),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 35,
                  margin: EdgeInsets.fromLTRB(10, 40, 10, 0),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black26),
                  ),
                  child: Row(
                    children: [
                      Row(
                        children: [
                          Column(
                            children: [
                              Container(
                                  height: 33,
                                  width: 35,
                                  // alignment: Alignment.centerLeft,
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
                                width: 188,
                                child: TextButton(
                                  child: Text(
                                    'Choose File',
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.grey[800]),
                                  ),
                                  onPressed: () async {
                                    final result =
                                        await FilePicker.platform.pickFiles();
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
                                    final result =
                                        await FilePicker.platform.pickFiles();
                                  },
                                  child: Text(
                                    'Browse',
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.black),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 80,
                  decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(width: 1, color: Colors.black26)),
                  ),
                  child: Row(
                    children: [
                      Flexible(
                        child: Text(
                          '*If any video links should be uploaded here.',
                          style: TextStyle(color: Colors.red, fontSize: 15),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    addVideos();
                  },
                  icon: Icon(Icons.add),
                ),
              ],
            ),
            Flexible(
                child: ListView.builder(
              itemCount: listVideos.length,
              itemBuilder: (_, index) => listVideos[index],
              shrinkWrap: true,
            )),
            SizedBox(
              height: 30,
            ),
            Row(
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
          ],
        ),
      ),
    );
  }
}

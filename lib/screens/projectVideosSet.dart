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
        backgroundColor: Color.fromRGBO(50, 75, 205, 1),
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
                    border: Border.all(color: Colors.black26),
                    borderRadius: BorderRadius.circular(5),
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
                  height: 80,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black26),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Icon(Icons.upload),
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
                    border: Border.all(color: Colors.black26),
                    borderRadius: BorderRadius.circular(5),
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
          ],
        ),
      ),
    );
  }
}

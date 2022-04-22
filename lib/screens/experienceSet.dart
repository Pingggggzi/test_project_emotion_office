import 'package:flutter/material.dart';
import 'package:test_project_emotion/screens/profile.dart';
import 'package:test_project_emotion/widgets/experienceForm.dart';

class ExperienceSetting extends StatefulWidget {
  @override
  State<ExperienceSetting> createState() => _ExperienceSettingState();
}

class _ExperienceSettingState extends State<ExperienceSetting> {
  List<ExperienceForm> listExperience = [];
  addExperience() {
    listExperience.add(new ExperienceForm());
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
        title: Text("Experience"),
        backgroundColor: Color.fromRGBO(50, 75, 205, 1),
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Flexible(
                child: ListView.builder(
              itemCount: listExperience.length,
              itemBuilder: (_, index) => listExperience[index],
              shrinkWrap: true,
            )),
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    addExperience();
                  },
                  icon: Icon(Icons.add),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

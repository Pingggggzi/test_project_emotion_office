import 'package:flutter/material.dart';
import 'package:test_project_emotion/screens/profile.dart';
import 'package:test_project_emotion/widgets/skillsForm.dart';

class SkillsSetting extends StatefulWidget {
  @override
  State<SkillsSetting> createState() => _SkillsSettingState();
}

class _SkillsSettingState extends State<SkillsSetting> {
  List<SkillsForm> listSkills = [];
  addSkills() {
    listSkills.add(new SkillsForm());
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
        title: Text("Skills"),
        backgroundColor: Color.fromARGB(255, 52, 58, 64),
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Text(
                    '*Noted thatBasic(1-3), Intermediate (4-7), Advance (8-10)',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    addSkills();
                  },
                  icon: Icon(Icons.add),
                ),
              ],
            ),
            Flexible(
                child: ListView.builder(
              itemCount: listSkills.length,
              itemBuilder: (_, index) => listSkills[index],
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

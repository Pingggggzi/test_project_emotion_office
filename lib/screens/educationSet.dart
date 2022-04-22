import 'package:flutter/material.dart';
import 'package:test_project_emotion/screens/profile.dart';
import 'package:test_project_emotion/widgets/educationForm.dart';

class EducationSetting extends StatefulWidget {
  @override
  State<EducationSetting> createState() => _EducationSettingState();
}

class _EducationSettingState extends State<EducationSetting> {
  List<EducationForm> listEducation = [];
  addEducation() {
    listEducation.add(new EducationForm());
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
        title: Text("Education"),
        backgroundColor: Color.fromRGBO(50, 75, 205, 1),
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Flexible(
                child: ListView.builder(
              itemCount: listEducation.length,
              itemBuilder: (_, index) => listEducation[index],
              shrinkWrap: true,
            )),
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    addEducation();
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

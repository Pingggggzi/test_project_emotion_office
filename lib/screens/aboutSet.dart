import 'package:flutter/material.dart';
import 'package:test_project_emotion/screens/profile.dart';
import 'package:test_project_emotion/widgets/mytextformField.dart';

class AboutSetting extends StatefulWidget {
  @override
  State<AboutSetting> createState() => _AboutSettingState();
}

class _AboutSettingState extends State<AboutSetting> {
  String? valueChoose1;
  List listItem1 = ['Malaysia', 'China'];
  List listItem11 = ['Johor', 'Kedah'];
  List listItem21 = ['Anhui', 'Beijing'];
  final TextEditingController salary = TextEditingController();

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
        title: Text("About"),
        backgroundColor: Color.fromRGBO(50, 75, 205, 1),
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  'Preferred Work Location',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: double.infinity,
              height: 60,
              padding: EdgeInsets.only(left: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Row(
                children: [
                  DropdownButton(
                    hint: Text(
                      "Preferred Work Location",
                      style: TextStyle(
                        color: Colors.grey[600],
                        fontSize: 17,
                      ),
                    ),
                    underline: SizedBox(),
                    style: TextStyle(color: Colors.black, fontSize: 18),
                    value: valueChoose1,
                    onChanged: (val) {
                      setState(() {
                        valueChoose1 = val as String;
                      });
                    },
                    items: listItem1.map((valueItem1) {
                      return DropdownMenuItem(
                        value: valueItem1,
                        child: Text(valueItem1),
                      );
                    }).toList(),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text(
                  'Expected Salary',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Container(
                  width: 230,
                  child: MyTextFormField(
                    controller: salary,
                    name: 'Enter Expected Salary',
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

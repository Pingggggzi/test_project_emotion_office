import 'package:flutter/material.dart';
import 'package:test_project_emotion/screens/profile.dart';
import 'package:test_project_emotion/widgets/mytextformField.dart';

class ContactSetting extends StatefulWidget {
  @override
  State<ContactSetting> createState() => _ContactSettingState();
}

class _ContactSettingState extends State<ContactSetting> {
  final TextEditingController houseAddress = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController phone = TextEditingController();
  final TextEditingController linkedin = TextEditingController();
  final TextEditingController facebook = TextEditingController();

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
        title: Text("Contact"),
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
                  'House Address',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Container(
                  width: 350,
                  child: MyTextFormField(
                      controller: houseAddress, name: 'Enter House Address'),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text(
                  'Email Address',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Container(
                  width: 350,
                  child: MyTextFormField(
                      controller: email, name: 'Your Email Address'),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text(
                  'Phone Number',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Container(
                  width: 350,
                  child: MyTextFormField(
                      controller: phone, name: 'Enter Phone Number'),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text(
                  'LinkedIn',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Container(
                  width: 350,
                  child: MyTextFormField(
                      controller: linkedin, name: 'Enter LinkedIn'),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text(
                  'Facebook',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Container(
                  width: 350,
                  child: MyTextFormField(
                      controller: facebook, name: 'Enter Facebook'),
                )
              ],
            ),
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
                          style: TextStyle(fontSize: 16),
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
                        )),
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

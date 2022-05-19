import 'package:flutter/material.dart';
import 'package:test_project_emotion/screens/companyVerify.dart';
import 'package:test_project_emotion/screens/employerHomepage.dart';

class EmployerSetting extends StatefulWidget {
  @override
  State<EmployerSetting> createState() => _EmployerSettingState();
}

class _EmployerSettingState extends State<EmployerSetting> {
  String? valueChoose;
  List listItem = ['English', '中文'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(Icons.arrow_back_ios_new),
            onPressed: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (ctx) => EmployerHomepage()));
            }),
        title: Text("Setting Page"),
        backgroundColor: Color.fromARGB(255, 52, 58, 64),
      ),
      body: Container(
        decoration: BoxDecoration(color: Colors.grey[100]),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 70,
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.black12),
                  borderRadius: BorderRadius.circular(5)),
              child: Row(
                children: [
                  DropdownButton(
                    hint: Text(
                      "Language",
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 18,
                      ),
                    ),
                    underline: SizedBox(),
                    style: TextStyle(color: Colors.black, fontSize: 18),
                    value: valueChoose,
                    onChanged: (val) {
                      setState(() {
                        valueChoose = val as String;
                      });
                    },
                    items: listItem.map((valueItem) {
                      return DropdownMenuItem(
                        value: valueItem,
                        child: Text(valueItem),
                      );
                    }).toList(),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 70,
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.black12),
                  borderRadius: BorderRadius.circular(5)),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      'Company Verification',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.arrow_right,
                      size: 25,
                    ),
                    onPressed: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (ctx) => CompanyVerification()));
                    },
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

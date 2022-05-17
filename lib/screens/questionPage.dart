import 'dart:math';

import 'package:flutter/material.dart';
import 'package:test_project_emotion/screens/employerHomepage.dart';
import 'package:test_project_emotion/widgets/mytextformField.dart';

class QuestionPage extends StatefulWidget {
  @override
  State<QuestionPage> createState() => _QuestionPageState();
}

class _QuestionPageState extends State<QuestionPage> {
  String? qustionCategories;
  String? type;
  List listCategories = [
    'Accounting/Finance',
    'Admin/Human Resources',
    'Sales/Marketing',
    'Arts/Media/Communications',
    'Services',
    'Hotel/Restaurant',
    'Education/Training',
    'Computer/Information Technology',
    'Engineering',
    'Manufacturing',
    'Building/Construction',
    'Sciences',
    'Healthcare',
    'Others'
  ];
  List listType = [];
  final TextEditingController question = TextEditingController();
  final TextEditingController time = TextEditingController();
  final TextEditingController keyword = TextEditingController();
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
        title: Text("Questions Categories"),
        backgroundColor: Color.fromARGB(255, 52, 58, 64),
      ),
      body: Container(
        color: Colors.grey[100],
        child: Container(
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: Colors.white, border: Border.all(color: Colors.black12)),
          child: ListView(
            children: [
              Container(
                height: 180,
                padding: EdgeInsets.all(10),
                width: double.infinity,
                decoration: BoxDecoration(
                    border: Border(bottom: BorderSide(color: Colors.black12))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(
                            onPressed: () {
                              showDialog(
                                  context: context,
                                  builder: (context) => AlertDialog(
                                        title: Text(
                                          'Add New Question',
                                          style: TextStyle(fontSize: 16),
                                        ),
                                        content: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Category',
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Container(),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              'Type',
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Container(
                                              width: double.infinity,
                                              height: 70,
                                              padding: EdgeInsets.all(20),
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  border: Border.all(
                                                      color: Colors.black12),
                                                  borderRadius:
                                                      BorderRadius.circular(5)),
                                              child: Row(
                                                children: [
                                                  DropdownButton(
                                                    hint: Text(
                                                      "Choose Type",
                                                      style: TextStyle(
                                                        color: Colors.black87,
                                                        fontSize: 16,
                                                      ),
                                                    ),
                                                    underline: SizedBox(),
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 16),
                                                    value: type,
                                                    onChanged: (val) {
                                                      setState(() {
                                                        type = val as String;
                                                      });
                                                    },
                                                    items: listType
                                                        .map((valueType) {
                                                      return DropdownMenuItem(
                                                        value: valueType,
                                                        child: Text(valueType),
                                                      );
                                                    }).toList(),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              'Question',
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            MyTextFormField(
                                                controller: question,
                                                name: 'Enter  Question'),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              'Time Limit(minutes)',
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            MyTextFormField(
                                                controller: time,
                                                name:
                                                    'Enter Time Limit(minutes)'),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              'Keywords',
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            MyTextFormField(
                                                controller: time,
                                                name: 'Enter Keywords'),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Row(
                                              children: [
                                                TextButton(
                                                    onPressed: () {},
                                                    child: Text('Cancel')),
                                                SizedBox(
                                                  width: 10,
                                                ),
                                                ElevatedButton(
                                                    onPressed: () {},
                                                    child: Text('Add'))
                                              ],
                                            )
                                          ],
                                        ),
                                      ));
                            },
                            icon: Icon(Icons.add)),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Filtering',
                          style: TextStyle(fontSize: 16),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: double.infinity,
                          height: 70,
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.black12),
                              borderRadius: BorderRadius.circular(5)),
                          child: Row(
                            children: [
                              DropdownButton(
                                hint: Text(
                                  "Choose Categories",
                                  style: TextStyle(
                                    color: Colors.black87,
                                    fontSize: 16,
                                  ),
                                ),
                                underline: SizedBox(),
                                style: TextStyle(
                                    color: Colors.black, fontSize: 16),
                                value: qustionCategories,
                                onChanged: (val) {
                                  setState(() {
                                    qustionCategories = val as String;
                                  });
                                },
                                items: listCategories.map((valueCategories) {
                                  return DropdownMenuItem(
                                    value: valueCategories,
                                    child: Text(valueCategories),
                                  );
                                }).toList(),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

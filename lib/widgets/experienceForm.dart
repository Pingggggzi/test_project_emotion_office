import 'package:flutter/material.dart';
import 'package:test_project_emotion/widgets/mytextformField.dart';

class ExperienceForm extends StatefulWidget {
  @override
  State<ExperienceForm> createState() => _ExperienceFormState();
}

class _ExperienceFormState extends State<ExperienceForm> {
  final form = GlobalKey<FormState>();
  final TextEditingController companyName = TextEditingController();
  final TextEditingController day = TextEditingController();
  final TextEditingController position = TextEditingController();
  final TextEditingController monSalary = TextEditingController();
  final TextEditingController experience = TextEditingController();
  final TextEditingController svName = TextEditingController();
  final TextEditingController svContact = TextEditingController();
  String? valueChoose1;
  String? valueChoose2;
  List listItem1 = [
    'January',
    'February',
    'March',
    'April',
    'May',
    'June',
    'July',
    'August',
    'September',
    'October',
    'November',
    'December'
  ];
  List listItem2 = [
    'January',
    'February',
    'March',
    'April',
    'May',
    'June',
    'July',
    'August',
    'September',
    'October',
    'November',
    'December'
  ];

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Text(''),
      initiallyExpanded: true,
      children: [
        Padding(
          padding: EdgeInsets.all(20),
          child: Card(
            child: Form(
              key: form,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              'Company Name',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Container(
                                width: 260,
                                child: MyTextFormField(
                                    controller: companyName,
                                    name: 'Enter Company Name'))
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Text(
                              'Joined Duration',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  width: 150,
                                  height: 60,
                                  padding: EdgeInsets.only(left: 10),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(color: Colors.grey),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Column(
                                    children: [
                                      DropdownButton(
                                        hint: Text(
                                          "Month",
                                          style: TextStyle(
                                            color: Colors.grey[600],
                                            fontSize: 17,
                                          ),
                                        ),
                                        underline: SizedBox(),
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 18),
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
                                  width: 5,
                                ),
                                Column(
                                  children: [
                                    Container(
                                        width: 80,
                                        child: MyTextFormField(
                                            controller: day, name: 'Day'))
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Container(
                                  width: 260,
                                  child: Text(
                                    '|',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.center,
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Container(
                                  width: 150,
                                  height: 60,
                                  padding: EdgeInsets.only(left: 10),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(color: Colors.grey),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Column(
                                    children: [
                                      DropdownButton(
                                        hint: Text(
                                          "Month",
                                          style: TextStyle(
                                            color: Colors.grey[600],
                                            fontSize: 17,
                                          ),
                                        ),
                                        underline: SizedBox(),
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 18),
                                        value: valueChoose2,
                                        onChanged: (val) {
                                          setState(() {
                                            valueChoose2 = val as String;
                                          });
                                        },
                                        items: listItem2.map((valueItem2) {
                                          return DropdownMenuItem(
                                            value: valueItem2,
                                            child: Text(valueItem2),
                                          );
                                        }).toList(),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Column(
                                  children: [
                                    Container(
                                        width: 80,
                                        child: MyTextFormField(
                                            controller: day, name: 'Day'))
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Text(
                              'Position',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Container(
                                width: 260,
                                child: MyTextFormField(
                                    controller: position,
                                    name: 'Enter Position'))
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Text(
                              'Monthly Salary',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Container(
                                width: 260,
                                child: MyTextFormField(
                                    controller: monSalary,
                                    name: 'Enter Monthly Salary'))
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Text(
                              'Experience',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Container(
                                width: 260,
                                child: MyTextFormField(
                                    controller: experience,
                                    name: 'Enter Experience'))
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Text(
                              'Supervisor Name',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Container(
                                width: 260,
                                child: MyTextFormField(
                                    controller: svName,
                                    name: 'Enter Supervisor Name'))
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Text(
                              'Supervisor Contact',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Container(
                                width: 260,
                                child: MyTextFormField(
                                    controller: svContact,
                                    name: 'Enter Supervisor Contact'))
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

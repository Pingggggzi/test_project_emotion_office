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
  String? valueChoose;
  List listItem = [
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
    return Padding(
      padding: EdgeInsets.all(20),
      child: Card(
        child: Form(
          key: form,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              AppBar(
                actions: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.delete,
                      color: Colors.black,
                    ),
                  ),
                ],
                backgroundColor: Colors.white,
              ),
              SizedBox(
                height: 10,
              ),
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
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

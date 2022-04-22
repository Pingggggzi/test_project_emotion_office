import 'package:flutter/material.dart';
import 'package:test_project_emotion/widgets/mytextformField.dart';

class EducationForm extends StatefulWidget {
  @override
  State<EducationForm> createState() => _EducationFormState();
}

class _EducationFormState extends State<EducationForm> {
  final form = GlobalKey<FormState>();
  final TextEditingController major = TextEditingController();
  final TextEditingController cgpa = TextEditingController();
  String? valueChoose1;
  String? valueChoose2;
  List listItem1 = [
    "Doctoral Degrees",
    "Master's Degrees",
    "Bachelor's Degrees",
    "Diploma"
  ];
  List listItem2 = [
    "Information Technology",
    "Human Resourse",
    "Engineering",
    "Arts",
    "Graphic Designer",
    "Public Relation"
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
                          'Qualification',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: 260,
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
                              "Doctoral Degrees",
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
                          'Field',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: 260,
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
                              "Information Technology",
                              style: TextStyle(
                                color: Colors.grey[600],
                                fontSize: 17,
                              ),
                            ),
                            underline: SizedBox(),
                            style: TextStyle(color: Colors.black, fontSize: 18),
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
                      height: 10,
                    ),
                    Row(
                      children: [
                        Text(
                          'Major',
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
                                controller: major, name: 'Enter Major'))
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Text(
                          'CGPA',
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
                                controller: cgpa, name: 'Enter CGPA'))
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

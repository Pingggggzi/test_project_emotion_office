import 'package:flutter/material.dart';
import 'package:test_project_emotion/widgets/mytextformField.dart';

class SkillsForm extends StatefulWidget {
  @override
  State<SkillsForm> createState() => _SkillsFormState();
}

class _SkillsFormState extends State<SkillsForm> {
  final form = GlobalKey<FormState>();
  final TextEditingController skills = TextEditingController();
  String? valueChoose;
  List listItem = ['Basic', 'Intermediate', 'Advance'];

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
              Row(
                children: [
                  Container(
                      width: 260,
                      child: MyTextFormField(
                          controller: skills, name: 'Enter Skills')),
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
                        "Level",
                        style: TextStyle(
                          color: Colors.grey[600],
                          fontSize: 17,
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
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class LanguageForm extends StatefulWidget {
  final state = _LanguageFormState();

  @override
  State<LanguageForm> createState() => state;

  bool isValid() => state.validate();
}

class _LanguageFormState extends State<LanguageForm> {
  final form = GlobalKey<FormState>();
  String? valueChoose1;
  String? valueChoose2;
  List listItem1 = [
    'Chinese',
    'Malay',
    'English',
    'Hindi',
    'Spanish',
    'Arabic',
    'Portuguess',
    'Bengali',
    'Russian',
    'Japanese'
  ];
  List listItem2 = ['Basic', 'Intermediate', 'Advance'];

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
                            "Language",
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
                            "Level",
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
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  // form validator
  bool validate() {
    var valid = form.currentState!.validate();
    if (valid) form.currentState!.save();
    return valid;
  }
}

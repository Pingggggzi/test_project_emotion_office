import 'dart:math';

import 'package:flutter/material.dart';
import 'package:test_project_emotion/screens/employerHomepage.dart';
import 'package:test_project_emotion/screens/questionsList.dart';
import 'package:test_project_emotion/widgets/mytextformField.dart';

class QuestionPage extends StatefulWidget {
  @override
  State<QuestionPage> createState() => _QuestionPageState();
}

class _QuestionPageState extends State<QuestionPage> {
  String? qustionCategories;
  String? type;
  String? dialogueCategories;
  List listCategories = [
    'All',
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
  List listType = ['gemeral', 'Skills', 'Experience', 'Characteristics'];
  List listCategoriesDialogue = [
    'Actuarial Science/Statistic',
    'Advertising/Media Planning',
    'Agriculture/Forestry/Fisheries',
    'Architecture/Interior Design',
    'Arts/Creative/Graphic Design',
    'Aviation/Aircraft Maintenance',
    'Banking/Financial Services',
    'Biomedical',
    'Biotechnology',
    'Chemistry',
    'Clerical/Administrative Support',
    'Corporate Strategy/Top Management',
    'Customer Service',
    'Digital Marketing',
    'E-Commerce',
    'Education',
    'Engineering - Chemical',
    'Engineering - Civil/Construction/Structural',
    'Engineering - Electrical',
    'Engineering - Electronics/Communication',
    'Engineering - Enveronmental/Health/Safety',
    'Engineering - Industrial',
    'Engineering - Mechanical/Automotive',
    'Engineering - Oil/Gas',
    'Engineering - Others',
    'Entertainment/Performing Arts',
    'Finance - Audit/Taxation',
    'Finance - Corporate Finance/Investment/Merchant Banking',
    'Finance - General/Cost Accounting',
    'Food Technology/Nutritionist',
    'Food/Beverage/Restaurant Service',
    'General Work (Housekeeper, Driver, Dispatch, Messenger, etc)',
    'Geology/Geophysics',
    'Healthcare - Doctor/Diagnosis',
    'Healthcare - Nurse/Medical Support & Assistant',
    'Healthcare - Pharmacy',
    'Hotel Management/Tourism Services',
    'Human Resources',
    'IT/Computer - Hardware',
    'IT/Computer - Network/System/Database Admin',
    'IT/Computer - Software',
    'Journalist/Editor',
    'Law/Legal Services',
    'Logistics/Supply Chain',
    'Maintenance/Repair (Facilities & Machinery)',
    'Manufacturing/Production Operations',
    'Marketing/Business Development',
    'Merchandising',
    'Others/Category not available',
    'Personal Care/Beauty/Fitness Service',
    'Process Design & Control/Instrumentation',
    'Property/Real Estate',
    'Public Relations/Communications',
    'Publishing/Printing',
    'Purchasing/Inventory/Material & Warehouse Management',
    'Management',
    'Quality Control/Assurance',
    'Quantity Surveying',
    'Sales - Corporate',
    'Sales - Engineering/Technical/IT',
    'Sales - Financial Services (Insurance, Unit Trust, etc)',
    'Sales - Retail/General',
    'Sales - Telesales/Telemarketing',
    'Science & Technology/Laboratory',
    'Security/Armed Forces/Protective Services',
    'Social & Counselling Service',
    'Technical & Helpdesk Support',
    'Training & Development'
  ];
  final TextEditingController question = TextEditingController();
  final TextEditingController time = TextEditingController();
  final TextEditingController keyword = TextEditingController();
  late String categoriesName;

  Widget buildCategoriesButton({required categoriesName}) {
    return Container(
      height: 70,
      width: double.infinity,
      padding: EdgeInsets.all(10),
      child: RaisedButton(
        child: Text(
          categoriesName,
          style: TextStyle(color: Colors.white, fontSize: 16),
          textAlign: TextAlign.center,
        ),
        color: Color.fromARGB(255, 23, 162, 184),
        onPressed: () {
          Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (ctx) => QuestionsList()));
        },
      ),
    );
  }

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
                                        content: Container(
                                          height: 500,
                                          width: double.infinity,
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Category',
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              SizedBox(
                                                height: 5,
                                              ),
                                              Container(
                                                width: double.infinity,
                                                height: 60,
                                                padding:
                                                    EdgeInsets.only(left: 10),
                                                decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    border: Border.all(
                                                        color: Colors.black45),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5)),
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    DropdownButton(
                                                      isExpanded: true,
                                                      hint: Text(
                                                        "Choose Category",
                                                        style: TextStyle(
                                                          color: Colors.black54,
                                                          fontSize: 16,
                                                        ),
                                                      ),
                                                      underline: SizedBox(),
                                                      style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 16),
                                                      value: dialogueCategories,
                                                      onChanged: (val) {
                                                        setState(() {
                                                          dialogueCategories =
                                                              val as String;
                                                        });
                                                      },
                                                      items: listCategoriesDialogue
                                                          .map(
                                                              (valueCategoriesDialogue) {
                                                        return DropdownMenuItem(
                                                          value:
                                                              valueCategoriesDialogue,
                                                          child: Text(
                                                              valueCategoriesDialogue),
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
                                                'Type',
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              SizedBox(
                                                height: 5,
                                              ),
                                              Container(
                                                width: double.infinity,
                                                height: 60,
                                                padding: EdgeInsets.all(10),
                                                decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    border: Border.all(
                                                        color: Colors.black45),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5)),
                                                child: Row(
                                                  children: [
                                                    DropdownButton(
                                                      hint: Text(
                                                        "Choose Type",
                                                        style: TextStyle(
                                                          color: Colors.black54,
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
                                                          child:
                                                              Text(valueType),
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
                                                    fontWeight:
                                                        FontWeight.bold),
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
                                                    fontWeight:
                                                        FontWeight.bold),
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
                                                    fontWeight:
                                                        FontWeight.bold),
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
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  TextButton(
                                                    onPressed: () {},
                                                    child: Text(
                                                      'Cancel',
                                                      style: TextStyle(
                                                          color:
                                                              Colors.grey[700]),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 10,
                                                  ),
                                                  ElevatedButton(
                                                    onPressed: () {},
                                                    child: Text('Add'),
                                                    style: ButtonStyle(
                                                        backgroundColor:
                                                            MaterialStateProperty
                                                                .all(
                                                      Color.fromARGB(
                                                          255, 23, 162, 184),
                                                    )),
                                                  )
                                                ],
                                              )
                                            ],
                                          ),
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
              ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Accounting/Finance',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    buildCategoriesButton(
                        categoriesName: 'Banking/Financial Services'),
                    buildCategoriesButton(
                        categoriesName: 'Finance - Audit/Taxation'),
                    buildCategoriesButton(
                        categoriesName:
                            'Finance - Corporate Finance/Investment/Merchant Banking'),
                    buildCategoriesButton(
                        categoriesName: 'Finance - General/Cost Accounting'),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Admin/Human Resources',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    buildCategoriesButton(
                        categoriesName: 'Clerical/Administrative Support'),
                    buildCategoriesButton(
                        categoriesName: 'Corporate Strategy/Top Management'),
                    buildCategoriesButton(categoriesName: 'Human Resources'),
                    buildCategoriesButton(
                        categoriesName:
                            'Secretarial/Executive & Personal Assistant'),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Sales/Marketing',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    buildCategoriesButton(categoriesName: 'Digital Marketing'),
                    buildCategoriesButton(categoriesName: 'E-Commerce'),
                    buildCategoriesButton(
                        categoriesName: 'Marketing/Business Development'),
                    buildCategoriesButton(categoriesName: 'Merchandising'),
                    buildCategoriesButton(categoriesName: 'Sales - Corporate'),
                    buildCategoriesButton(
                        categoriesName: 'Sales - Engineering/Technical/IT'),
                    buildCategoriesButton(
                        categoriesName:
                            'Sales - Financial Services (Insurance, Unit Trust, etc)'),
                    buildCategoriesButton(
                        categoriesName: 'Sales - Retail/General'),
                    buildCategoriesButton(
                        categoriesName: 'Sales - Telesales/Telemarketing'),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Arts/Media/Communications',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    buildCategoriesButton(
                        categoriesName: 'Advertising/Media Planning'),
                    buildCategoriesButton(
                        categoriesName: 'Arts/Creative/Graphic Design'),
                    buildCategoriesButton(
                        categoriesName: 'Entertainment/Performing Arts'),
                    buildCategoriesButton(
                        categoriesName: 'Public Relations/Communications'),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Services',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    buildCategoriesButton(categoriesName: 'Customer Service'),
                    buildCategoriesButton(categoriesName: 'Law/Legal Services'),
                    buildCategoriesButton(
                        categoriesName: 'Logistics/Supply Chain'),
                    buildCategoriesButton(
                        categoriesName: 'Personal Care/Beauty/Fitness Service'),
                    buildCategoriesButton(
                        categoriesName:
                            'Security/Armed Forces/Protective Services'),
                    buildCategoriesButton(
                        categoriesName: 'Social & Counselling Service'),
                    buildCategoriesButton(
                        categoriesName: 'Technical & Helpdesk Support'),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Hotel/Restaurant',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    buildCategoriesButton(
                        categoriesName: 'Food/Beverage/Restaurant Service'),
                    buildCategoriesButton(
                        categoriesName: 'Hotel Management/Tourism Services'),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Education/Training',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    buildCategoriesButton(categoriesName: 'Education'),
                    buildCategoriesButton(
                        categoriesName: 'Training & Development'),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Computer/Information Technology',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    buildCategoriesButton(
                        categoriesName: 'IT/Computer - Hardware'),
                    buildCategoriesButton(
                        categoriesName:
                            'IT/Computer - Network/System/Database Admin'),
                    buildCategoriesButton(
                        categoriesName: 'IT/Computer - Software'),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Engineering',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    buildCategoriesButton(
                        categoriesName: 'Engineering - Chemical'),
                    buildCategoriesButton(
                        categoriesName: 'Engineering - Electrical'),
                    buildCategoriesButton(
                        categoriesName:
                            'Engineering - Electronics/Communication'),
                    buildCategoriesButton(
                        categoriesName:
                            'Engineering - Enveronmental/Health/Safety'),
                    buildCategoriesButton(
                        categoriesName: 'Engineering - Industrial'),
                    buildCategoriesButton(
                        categoriesName: 'Engineering - Mechanical/Automotive'),
                    buildCategoriesButton(
                        categoriesName: 'Engineering - Oil/Gas'),
                    buildCategoriesButton(
                        categoriesName: 'Engineering - Others'),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Manufacturing',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    buildCategoriesButton(
                        categoriesName:
                            'Maintenance/Repair (Facilities & Machinery)'),
                    buildCategoriesButton(
                        categoriesName: 'Manufacturing/Production Operations'),
                    buildCategoriesButton(
                        categoriesName:
                            'Process Design & Control/Instrumentation'),
                    buildCategoriesButton(
                        categoriesName:
                            'Purchasing/Inventory/Material & Warehouse Management'),
                    buildCategoriesButton(
                        categoriesName: 'Quality Control/Assurance'),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Building/Construction',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    buildCategoriesButton(
                        categoriesName: 'Architecture/Interior Design'),
                    buildCategoriesButton(
                        categoriesName:
                            'Engineering - Civil/Construction/Structural'),
                    buildCategoriesButton(
                        categoriesName: 'Property/Real Estate'),
                    buildCategoriesButton(categoriesName: 'Quantity Surveying'),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Sciences',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    buildCategoriesButton(
                        categoriesName: 'Actuarial Science/Statistic'),
                    buildCategoriesButton(
                        categoriesName: 'Agriculture/Forestry/Fisheries'),
                    buildCategoriesButton(
                        categoriesName: 'Aviation/Aircraft Maintenance'),
                    buildCategoriesButton(categoriesName: 'Biomedical'),
                    buildCategoriesButton(categoriesName: 'Biotechnology'),
                    buildCategoriesButton(categoriesName: 'Chemistry'),
                    buildCategoriesButton(
                        categoriesName: 'Food Technology/Nutritionist'),
                    buildCategoriesButton(categoriesName: 'Geology/Geophysics'),
                    buildCategoriesButton(
                        categoriesName: 'Science & Technology/Laboratory'),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Healthcare',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    buildCategoriesButton(
                        categoriesName: 'Healthcare - Doctor/Diagnosis'),
                    buildCategoriesButton(
                        categoriesName:
                            'Healthcare - Nurse/Medical Support & Assistant'),
                    buildCategoriesButton(
                        categoriesName: 'Healthcare - Pharmacy'),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Others',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    buildCategoriesButton(
                        categoriesName:
                            'General Work (Housekeeper, Driver, Dispatch, Messenger, etc)'),
                    buildCategoriesButton(categoriesName: 'Journalist/Editor'),
                    buildCategoriesButton(
                        categoriesName: 'Others/Category not available'),
                    buildCategoriesButton(
                        categoriesName: 'Publishing/Printing'),
                    SizedBox(
                      height: 10,
                    ),
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

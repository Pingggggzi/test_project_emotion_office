import 'package:flutter/material.dart';
import 'package:test_project_emotion/screens/advertise.dart';
import 'package:test_project_emotion/widgets/mytextformField.dart';

class AddJobAdvertisement extends StatefulWidget {
  @override
  State<AddJobAdvertisement> createState() => _AddJobAdvertisementState();
}

class _AddJobAdvertisementState extends State<AddJobAdvertisement> {
  final TextEditingController salary = TextEditingController();
  final TextEditingController requirement = TextEditingController();
  final TextEditingController jobScope = TextEditingController();
  String? expertise;
  String? jobRoles;
  String? employment;
  String? salaryUnit;
  String? location;
  String? qualification;
  String? language;
  List listExpertise = [
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
    'Training & Development',
  ];
  List listJobRoles = [];
  List listEmployment = [
    'Full-Time',
    'Part-Time',
  ];
  List listSalaryUnit = ['MYR', 'RMB'];
  List listLocation = ['Malaysia', 'China'];
  List listQualification = [
    "Doctoral Degrees",
    "Master's Degrees",
    "Bachelor's Degrees",
    "Diploma",
  ];
  List listLanguage = [
    'Chinese',
    'Malay',
    'English',
    'Hindi',
    'Spanish',
    'Arabic',
    'Portuguess',
    'Bengali',
    'Russian',
    'Japanese',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(Icons.arrow_back_ios_new),
            onPressed: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (ctx) => Advertise()));
            }),
        title: Text("Add New Job"),
        backgroundColor: Color.fromARGB(255, 52, 58, 64),
      ),
      body: Container(
        color: Colors.grey[100],
        child: Container(
          margin: EdgeInsets.all(15),
          width: double.infinity,
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.black12),
              borderRadius: BorderRadius.circular(5)),
          child: ListView(
            children: [
              SizedBox(
                height: 10,
              ),
              Container(
                width: double.infinity,
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    border: Border(bottom: BorderSide(color: Colors.black12))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Expertise',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      width: double.infinity,
                      height: 60,
                      padding: EdgeInsets.only(left: 10),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.black45),
                          borderRadius: BorderRadius.circular(5)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          DropdownButton(
                            isExpanded: true,
                            hint: Text(
                              "-- Select One --",
                              style: TextStyle(
                                color: Colors.black54,
                                fontSize: 16,
                              ),
                            ),
                            underline: SizedBox(),
                            style: TextStyle(color: Colors.black, fontSize: 16),
                            value: expertise,
                            onChanged: (val) {
                              setState(() {
                                expertise = val as String;
                              });
                            },
                            items: listExpertise.map((valueExpertise) {
                              return DropdownMenuItem(
                                value: valueExpertise,
                                child: Text(valueExpertise),
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
                      'Job Roles',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
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
                          border: Border.all(color: Colors.black45),
                          borderRadius: BorderRadius.circular(5)),
                      child: Row(
                        children: [
                          DropdownButton(
                            hint: Text(
                              "-- Select One --",
                              style: TextStyle(
                                color: Colors.black54,
                                fontSize: 16,
                              ),
                            ),
                            underline: SizedBox(),
                            style: TextStyle(color: Colors.black, fontSize: 16),
                            value: jobRoles,
                            onChanged: (val) {
                              setState(() {
                                jobRoles = val as String;
                              });
                            },
                            items: listJobRoles.map((valueJobRoles) {
                              return DropdownMenuItem(
                                value: valueJobRoles,
                                child: Text(valueJobRoles),
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
                      'Employment',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
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
                          border: Border.all(color: Colors.black45),
                          borderRadius: BorderRadius.circular(5)),
                      child: Row(
                        children: [
                          DropdownButton(
                            hint: Text(
                              "-- Select One --",
                              style: TextStyle(
                                color: Colors.black54,
                                fontSize: 16,
                              ),
                            ),
                            underline: SizedBox(),
                            style: TextStyle(color: Colors.black, fontSize: 16),
                            value: employment,
                            onChanged: (val) {
                              setState(() {
                                employment = val as String;
                              });
                            },
                            items: listEmployment.map((valueEmployment) {
                              return DropdownMenuItem(
                                value: valueEmployment,
                                child: Text(valueEmployment),
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
                      'Salary',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 110,
                          height: 60,
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.black45),
                              borderRadius: BorderRadius.circular(5)),
                          child: Row(
                            children: [
                              DropdownButton(
                                hint: Text(
                                  "MYR",
                                  style: TextStyle(
                                    color: Colors.black54,
                                    fontSize: 16,
                                  ),
                                ),
                                underline: SizedBox(),
                                style: TextStyle(
                                    color: Colors.black, fontSize: 16),
                                value: salaryUnit,
                                onChanged: (val) {
                                  setState(() {
                                    salaryUnit = val as String;
                                  });
                                },
                                items: listSalaryUnit.map((valueSalaryUnit) {
                                  return DropdownMenuItem(
                                    value: valueSalaryUnit,
                                    child: Text(valueSalaryUnit),
                                  );
                                }).toList(),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 240,
                          child: MyTextFormField(
                              controller: salary, name: 'Enter Salary'),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Requirement',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    MyTextFormField(
                        controller: requirement, name: 'Enter Requirement'),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Job Scope',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    MyTextFormField(
                        controller: jobScope, name: 'Enter Job Scope'),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                margin: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Filtering Option',
                      style: TextStyle(fontSize: 18),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Location',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
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
                          border: Border.all(color: Colors.black45),
                          borderRadius: BorderRadius.circular(5)),
                      child: Row(
                        children: [
                          DropdownButton(
                            hint: Text(
                              "-- Select One --",
                              style: TextStyle(
                                color: Colors.black54,
                                fontSize: 16,
                              ),
                            ),
                            underline: SizedBox(),
                            style: TextStyle(color: Colors.black, fontSize: 16),
                            value: location,
                            onChanged: (val) {
                              setState(() {
                                location = val as String;
                              });
                            },
                            items: listLocation.map((valueLocation) {
                              return DropdownMenuItem(
                                value: valueLocation,
                                child: Text(valueLocation),
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
                      'Qualification',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
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
                          border: Border.all(color: Colors.black45),
                          borderRadius: BorderRadius.circular(5)),
                      child: Row(
                        children: [
                          DropdownButton(
                            hint: Text(
                              "-- Select One --",
                              style: TextStyle(
                                color: Colors.black54,
                                fontSize: 16,
                              ),
                            ),
                            underline: SizedBox(),
                            style: TextStyle(color: Colors.black, fontSize: 16),
                            value: qualification,
                            onChanged: (val) {
                              setState(() {
                                qualification = val as String;
                              });
                            },
                            items: listQualification.map((valueQualification) {
                              return DropdownMenuItem(
                                value: valueQualification,
                                child: Text(valueQualification),
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
                      'Language',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
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
                          border: Border.all(color: Colors.black45),
                          borderRadius: BorderRadius.circular(5)),
                      child: Row(
                        children: [
                          DropdownButton(
                            hint: Text(
                              "-- Select One --",
                              style: TextStyle(
                                color: Colors.black54,
                                fontSize: 16,
                              ),
                            ),
                            underline: SizedBox(),
                            style: TextStyle(color: Colors.black, fontSize: 16),
                            value: language,
                            onChanged: (val) {
                              setState(() {
                                language = val as String;
                              });
                            },
                            items: listLanguage.map((valueLanguage) {
                              return DropdownMenuItem(
                                value: valueLanguage,
                                child: Text(valueLanguage),
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
                      'Personality',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(),
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

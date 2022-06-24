import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:test_project_emotion/screens/advertise.dart';
import 'package:test_project_emotion/screens/candidate.dart';
import 'package:test_project_emotion/screens/companyProfile.dart';
import 'package:test_project_emotion/screens/employerLogin.dart';
import 'package:test_project_emotion/screens/employerSetting.dart';
import 'package:test_project_emotion/screens/questionPage.dart';
import 'package:test_project_emotion/widgets/barChart.dart';

class EmployerHomepage extends StatefulWidget {
  @override
  State<EmployerHomepage> createState() => _EmployerHomepageState();
}

class _EmployerHomepageState extends State<EmployerHomepage> {
  PickedFile? _imageFile;
  final ImagePicker _picker = ImagePicker();

  bool homeColor = true;
  bool profileColor = false;
  bool jobprogressColor = false;
  bool jobsColor = false;
  bool settingColor = false;

  RoundedIconButton(
      {required IconData iconData, required Null Function() press}) {}

  Widget _buildMyDrawer() {
    return Drawer(
      child: Container(
        color: Color.fromARGB(255, 52, 58, 64),
        child: ListView(
          children: <Widget>[
            Container(
                padding: EdgeInsets.symmetric(vertical: 40),
                child: Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Stack(
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundImage: _imageFile == null
                              ? AssetImage("images/User.jpg") as ImageProvider
                              : FileImage(File(_imageFile!.path)),
                        ),
                        Positioned(
                            bottom: 4,
                            right: 2,
                            child: InkWell(
                              onTap: () {
                                showModalBottomSheet(
                                  context: context,
                                  builder: ((builder) => bottomSheet()),
                                );
                              },
                              child: Icon(
                                Icons.camera_alt,
                                color: Color.fromRGBO(50, 75, 205, 1),
                                size: 20,
                              ),
                            ))
                      ],
                    ),
                    SizedBox(width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Username",
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                        SizedBox(height: 4),
                        Text(
                          "Email address",
                          style: TextStyle(fontSize: 14, color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                )),
            ListTile(
              selected: homeColor,
              onTap: () {
                setState(() {
                  homeColor = true;
                  profileColor = false;
                  jobprogressColor = false;
                  jobsColor = false;
                  settingColor = false;
                });
              },
              leading: Icon(
                Icons.home,
                color: Colors.white,
              ),
              title: Text(
                "Home",
                style: TextStyle(color: Colors.white),
              ),
            ),
            ListTile(
              selected: profileColor,
              onTap: () {
                setState(() {
                  homeColor = true;
                  profileColor = false;
                  jobprogressColor = false;
                  jobsColor = false;
                  settingColor = false;
                });
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (ctx) => CompanyProfile()));
              },
              leading: Icon(Icons.badge),
              title: Text("Company Profile"),
            ),
            ListTile(
              selected: jobprogressColor,
              onTap: () {
                setState(() {
                  homeColor = true;
                  profileColor = false;
                  jobprogressColor = false;
                  jobsColor = false;
                  settingColor = false;
                });
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (ctx) => Candidate()));
              },
              leading: Icon(Icons.people),
              title: Text("Candidate"),
            ),
            ListTile(
              selected: jobsColor,
              onTap: () {
                setState(() {
                  homeColor = true;
                  profileColor = false;
                  jobprogressColor = false;
                  jobsColor = false;
                  settingColor = false;
                });
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (ctx) => QuestionPage()));
              },
              leading: Icon(Icons.question_answer),
              title: Text("Questions"),
            ),
            ListTile(
              selected: jobsColor,
              onTap: () {
                setState(() {
                  homeColor = true;
                  profileColor = false;
                  jobprogressColor = false;
                  jobsColor = false;
                  settingColor = false;
                });
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (ctx) => Advertise()));
              },
              leading: Icon(Icons.inventory),
              title: Text("Advertise"),
            ),
            ListTile(
              selected: settingColor,
              onTap: () {
                setState(() {
                  homeColor = true;
                  profileColor = false;
                  jobprogressColor = false;
                  jobsColor = false;
                  settingColor = false;
                });
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (ctx) => EmployerSetting()));
              },
              leading: Icon(Icons.settings),
              title: Text("Setting"),
            ),
            ListTile(
              onTap: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (ctx) => EmployerLogin()));
              },
              leading: Icon(Icons.exit_to_app),
              title: Text("Logout"),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: _buildMyDrawer(),
        appBar: AppBar(
          leading: RoundedIconButton(
            iconData: Icons.menu,
            press: () {
              Scaffold.of(context).openDrawer();
            },
          ),
          backgroundColor: Color.fromARGB(255, 52, 58, 64),
          title: Text(
            "Home",
            style: TextStyle(fontSize: 18.0),
          ),
          bottom: PreferredSize(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
              child: Column(
                children: [],
              ),
            ),
            preferredSize: Size.fromHeight(15),
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            color: Colors.grey[100],
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.black12),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Total Accumulated Candidate",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 10, fontWeight: FontWeight.bold),
                            ),
                            Icon(Icons.groups),
                          ],
                        ),
                      ),
                      Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.black12),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "New Candidate Current Month",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 10, fontWeight: FontWeight.bold),
                            ),
                            Icon(Icons.event_available),
                          ],
                        ),
                      ),
                      Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.black12),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "New Candidate Previous Month",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 10, fontWeight: FontWeight.bold),
                            ),
                            Icon(Icons.event_note),
                          ],
                        ),
                      ),
                      Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.black12),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Total Accumulated Hiring Position",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 10, fontWeight: FontWeight.bold),
                            ),
                            Icon(Icons.search),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 23, 162, 184),
                      borderRadius: BorderRadius.circular(5)),
                  child: ExpansionTile(
                    title: Text(
                      'Candidate Status',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                    initiallyExpanded: true,
                    children: [
                      Container(
                        height: 300,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(5),
                                bottomRight: Radius.circular(5))),
                        child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    height: 10,
                                    width: 35,
                                    color: Colors.orange[700],
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    'Applied',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey[600],
                                      decoration: TextDecoration.lineThrough,
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Row(
                                children: [
                                  Container(
                                    height: 10,
                                    width: 35,
                                    color: Colors.blue[900],
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    'Interviewed',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey[600],
                                      decoration: TextDecoration.lineThrough,
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Row(
                                children: [
                                  Container(
                                    height: 10,
                                    width: 35,
                                    color: Colors.green[800],
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    'Hired',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey[600],
                                      decoration: TextDecoration.lineThrough,
                                    ),
                                  )
                                ],
                              ),
                            ]),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 23, 162, 184),
                      borderRadius: BorderRadius.circular(5)),
                  child: ExpansionTile(
                    title: Text(
                      'Candidate Gender',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                    initiallyExpanded: true,
                    children: [
                      Container(
                        height: 300,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(5),
                                bottomRight: Radius.circular(5))),
                        padding: EdgeInsets.all(10),
                        child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    height: 10,
                                    width: 35,
                                    color: Colors.blueAccent[200],
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    'Male',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey[600],
                                      decoration: TextDecoration.lineThrough,
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Row(
                                children: [
                                  Container(
                                    height: 10,
                                    width: 35,
                                    color: Colors.pinkAccent[100],
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    'Female',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey[600],
                                      decoration: TextDecoration.lineThrough,
                                    ),
                                  )
                                ],
                              ),
                            ]),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 23, 162, 184),
                      borderRadius: BorderRadius.circular(5)),
                  child: ExpansionTile(
                    title: Text(
                      'Candidate Group Age',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                    initiallyExpanded: true,
                    children: [
                      Container(
                        height: 300,
                        width: double.infinity,
                        padding: EdgeInsets.all(30),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(5),
                                bottomRight: Radius.circular(5))),
                        child: BarChartWidget(),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }

  Widget bottomSheet() {
    return Container(
      height: 100,
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 20,
      ),
      child: Column(
        children: [
          Text(
            'Choose Profile Photo',
            style: TextStyle(fontSize: 18),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FlatButton.icon(
                onPressed: () {
                  takePhoto(ImageSource.camera);
                },
                icon: Icon(Icons.camera),
                label: Text('Camera'),
              ),
              FlatButton.icon(
                onPressed: () {
                  takePhoto(ImageSource.gallery);
                },
                icon: Icon(Icons.image),
                label: Text('Gallery'),
              ),
            ],
          )
        ],
      ),
    );
  }

  void takePhoto(ImageSource source) async {
    final pickedFile = await _picker.getImage(
      source: source,
    );
    setState(() {
      _imageFile = pickedFile;
    });
  }
}

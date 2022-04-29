import 'package:flutter/material.dart';
import 'package:test_project_emotion/screens/homepage.dart';
import 'package:test_project_emotion/screens/jobs.dart';
import 'package:test_project_emotion/widgets/jobApplied.dart';

class DetailedJobInfo extends StatelessWidget {
  final String companyName;
  final String jobName;
  final String expertise;
  final String salary;
  final String jobScope;
  final String jobRequirement;
  final String companyOverview;
  final String registrationNo;
  final String location;
  final String phoneNo;
  final String email;
  final String companySize;
  final String others;
  final String image;
  DetailedJobInfo(
      {required this.companyName,
      required this.jobName,
      required this.expertise,
      required this.salary,
      required this.jobScope,
      required this.jobRequirement,
      required this.companyOverview,
      required this.registrationNo,
      required this.location,
      required this.phoneNo,
      required this.email,
      required this.companySize,
      required this.others,
      required this.image});

  List<JobApplied> listJobApplied = [];
  addJobApplied() {
    listJobApplied.add(new JobApplied(
      companyName: 'Brandt International Sdn Bhd',
      jobName: 'Computer Hardware Engineer',
      salary: 'RM 2000',
    ));
    // setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(Icons.arrow_back_ios_new),
            onPressed: () {
              Navigator.of(context)
                  .pushReplacement(MaterialPageRoute(builder: (ctx) => Jobs()));
            }),
        title: Text("Detailed Job Information"),
        backgroundColor: Color.fromARGB(255, 52, 58, 64),
      ),
      body: ListView(
        children: [
          Container(
              padding: EdgeInsets.all(10),
              color: Colors.grey[100],
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                    decoration: BoxDecoration(
                        border:
                            Border(bottom: BorderSide(color: Colors.black12))),
                    child: Image(
                      image: AssetImage(image),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                    decoration: BoxDecoration(
                        border:
                            Border(bottom: BorderSide(color: Colors.black12))),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          jobName,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          companyName,
                          style: TextStyle(fontSize: 15),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                      width: double.infinity,
                      padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                      decoration: BoxDecoration(
                          border: Border(
                              bottom: BorderSide(color: Colors.black12))),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Job Information',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Expertise :',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            expertise,
                            style: TextStyle(fontSize: 15),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Salary :',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            salary,
                            style: TextStyle(fontSize: 15),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Job Scopes :',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            jobScope,
                            style: TextStyle(fontSize: 15),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Job Requirements :',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            jobRequirement,
                            style: TextStyle(fontSize: 15),
                          ),
                        ],
                      )),
                  Container(
                      width: double.infinity,
                      padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                      decoration: BoxDecoration(
                          border: Border(
                              bottom: BorderSide(color: Colors.black12))),
                      child: Column(
                        children: [
                          Text(
                            'Company Overview',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            companyOverview,
                            style: TextStyle(fontSize: 15),
                            textAlign: TextAlign.center,
                          )
                        ],
                      )),
                  Container(
                      width: double.infinity,
                      padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                      decoration: BoxDecoration(
                          border: Border(
                              bottom: BorderSide(color: Colors.black12))),
                      child: Column(
                        children: [
                          Text(
                            'Compant Information',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Registration No :',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            registrationNo,
                            style: TextStyle(fontSize: 15),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Location :',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            location,
                            style: TextStyle(fontSize: 15),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Office Phone No :',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            phoneNo,
                            style: TextStyle(fontSize: 15),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Office Email :',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            email,
                            style: TextStyle(fontSize: 15),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Company Size :',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            companySize,
                            style: TextStyle(fontSize: 15),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Others :',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            others,
                            style: TextStyle(fontSize: 15),
                          ),
                        ],
                      )),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                      width: double.infinity,
                      padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                      child: ElevatedButton(
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                                title: Text('Confirmation'),
                                content: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      padding:
                                          EdgeInsets.fromLTRB(0, 10, 0, 10),
                                      decoration: BoxDecoration(
                                          border: Border(
                                              bottom: BorderSide(
                                                  color: Colors.black12),
                                              top: BorderSide(
                                                  color: Colors.black12))),
                                      child: Text(
                                        'Are you sure you want to apply this job ?',
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.grey[800]),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        ElevatedButton(
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                          child: Text(
                                            'Close',
                                            style: TextStyle(fontSize: 16),
                                          ),
                                          style: ButtonStyle(
                                              backgroundColor:
                                                  MaterialStateProperty.all(
                                                      Colors.grey[800])),
                                        ),
                                        ElevatedButton(
                                          onPressed: () {
                                            addJobApplied();
                                            Navigator.of(context)
                                                .pushReplacement(
                                                    MaterialPageRoute(
                                                        builder: (ctx) =>
                                                            HomePage()));
                                          },
                                          child: Text(
                                            'Yes, Apply',
                                            style: TextStyle(fontSize: 16),
                                          ),
                                          style: ButtonStyle(
                                              backgroundColor:
                                                  MaterialStateProperty.all(
                                                      Color.fromRGBO(
                                                          50, 75, 205, 1))),
                                        )
                                      ],
                                    )
                                  ],
                                )),
                          );
                        },
                        child: Text('Apply'),
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                                Color.fromRGBO(50, 75, 205, 1))),
                      ))
                ],
              ))
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:test_project_emotion/screens/employerHomepage.dart';

class CompanyProfile extends StatefulWidget {
  @override
  State<CompanyProfile> createState() => _CompanyProfileState();
}

class _CompanyProfileState extends State<CompanyProfile> {
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
        title: Text("Company Profile"),
        backgroundColor: Color.fromARGB(255, 52, 58, 64),
      ),
      body: Container(
        color: Colors.grey[100],
        child: Container(
          margin: EdgeInsets.all(15),
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.black12),
              borderRadius: BorderRadius.circular(5)),
          child: ListView(
            children: [
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        border:
                            Border(bottom: BorderSide(color: Colors.black12))),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: double.infinity,
                            height: 200,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Color.fromARGB(255, 219, 214, 214),
                                    width: 3.0)),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.upload),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  TextButton(
                                      onPressed: () {},
                                      child: Text(
                                        'UPLOAD COMPANY BANNER',
                                        style: TextStyle(color: Colors.black),
                                      ))
                                ]),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Color.fromARGB(255, 219, 214, 214),
                                    width: 3.0),
                                borderRadius: BorderRadius.circular(20)),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.upload),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  TextButton(
                                      onPressed: () {},
                                      child: Text(
                                        'UPLOAD COMPANY LOGO',
                                        style: TextStyle(color: Colors.black),
                                        textAlign: TextAlign.center,
                                      ))
                                ]),
                          ),
                          SizedBox(
                            height: 10,
                          )
                        ]),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

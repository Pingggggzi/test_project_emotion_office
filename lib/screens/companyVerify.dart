import 'package:flutter/material.dart';
import 'package:test_project_emotion/screens/employerSetting.dart';
import 'package:test_project_emotion/widgets/mytextformField.dart';

class CompanyVerification extends StatefulWidget {
  @override
  State<CompanyVerification> createState() => _CompanyVerificationState();
}

class _CompanyVerificationState extends State<CompanyVerification> {
  int currentStep = 0;
  final TextEditingController companyName = TextEditingController();
  final TextEditingController companyAddress = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(Icons.arrow_back_ios_new),
            onPressed: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (ctx) => EmployerSetting()));
            }),
        title: Text("Company Verification"),
        backgroundColor: Color.fromARGB(255, 52, 58, 64),
      ),
      body: ListView(
        shrinkWrap: true,
        children: [
          Theme(
            data: Theme.of(context).copyWith(
                colorScheme: const ColorScheme.light(
                    primary: Color.fromARGB(255, 23, 162, 184))),
            child: Stepper(
                physics: ClampingScrollPhysics(),
                currentStep: currentStep,
                onStepTapped: (index) {
                  setState(() {
                    currentStep = index;
                  });
                },
                onStepContinue: () {
                  if (currentStep != 3) {
                    setState(() {
                      currentStep++;
                    });
                  }
                },
                onStepCancel: () {
                  if (currentStep != 0) {
                    setState(() {
                      currentStep--;
                    });
                  }
                },
                steps: [
                  Step(
                      isActive: currentStep >= 0,
                      title: Text(
                        'NRIC Scanning',
                        style: TextStyle(fontSize: 16),
                      ),
                      content: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Front Identity Card',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            height: 200,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                color: Colors.grey,
                                border: Border.all(
                                    color: Color.fromARGB(255, 219, 213, 213),
                                    width: 5.0)),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Back Identity Card',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            height: 200,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                color: Colors.grey,
                                border: Border.all(
                                    color: Color.fromARGB(255, 219, 213, 213),
                                    width: 5.0)),
                          ),
                        ],
                      )),
                  Step(
                      isActive: currentStep >= 1,
                      title: Text(
                        'Facial Recognition & Video Recording',
                        style: TextStyle(fontSize: 16),
                      ),
                      content: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Video Recording Section',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            height: 200,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.black12)),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          ElevatedButton(
                              onPressed: () {}, child: Text('Start Recording')),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Snapshot Selfie Section',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            height: 200,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.black12)),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          ElevatedButton(
                              onPressed: () {}, child: Text('Take Selfie')),
                        ],
                      )),
                  Step(
                      isActive: currentStep >= 2,
                      title: Text(
                        'Company Documents',
                        style: TextStyle(fontSize: 16),
                      ),
                      content: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Company Name',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          MyTextFormField(
                              controller: companyName,
                              name: 'Enter Company Name'),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Company Address',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          MyTextFormField(
                              controller: companyAddress,
                              name: 'Enter Company Address')
                        ],
                      )),
                  Step(
                      isActive: currentStep >= 3,
                      title: Text(
                        'Finish',
                        style: TextStyle(fontSize: 16),
                      ),
                      content: Container(
                        child: Text(
                          'Thank you for your time to verify !',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      )),
                ]),
          )
        ],
      ),
    );
  }
}

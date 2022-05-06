import 'package:flutter/material.dart';
import 'package:test_project_emotion/screens/homepage.dart';

class Jobprogress extends StatefulWidget {
  @override
  State<Jobprogress> createState() => _JobprogressState();
}

class _JobprogressState extends State<Jobprogress> {
  int currentStep = 0;
  String companyName = 'Brandt International Sdn Bhd';
  String jobName = 'Training & Development - Training & Development';

  @override
  Widget buildjobProgress() {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black12),
          borderRadius: BorderRadius.circular(5),
          color: Colors.white),
      child: Column(
        children: [
          Text(
            companyName,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            jobName,
            style: TextStyle(
              fontSize: 15,
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 30,
                width: 30,
                margin: EdgeInsets.only(top: 5, bottom: 5),
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(50)),
                child: Text(
                  '1',
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                width: 60,
                height: 2,
                color: Colors.black,
              ),
              Container(
                height: 30,
                width: 30,
                margin: EdgeInsets.only(top: 5, bottom: 5),
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(50)),
                child: Text(
                  '2',
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                width: 60,
                height: 2,
                color: Colors.black,
              ),
              Container(
                height: 30,
                width: 30,
                margin: EdgeInsets.only(top: 5, bottom: 5),
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(50)),
                child: Text(
                  '3',
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Text('Applied'),
              ),
              SizedBox(
                width: 20,
              ),
              Container(
                child: Text('AI Interview'),
              ),
              SizedBox(
                width: 20,
              ),
              Container(
                child: Text('AI Shortlist'),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 30,
                width: 30,
                margin: EdgeInsets.only(top: 5, bottom: 5),
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(50)),
                child: Text(
                  '4',
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                width: 60,
                height: 2,
                color: Colors.black,
              ),
              Container(
                height: 30,
                width: 30,
                margin: EdgeInsets.only(top: 5, bottom: 5),
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(50)),
                child: Text(
                  '5',
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                width: 60,
                height: 2,
                color: Colors.black,
              ),
              Container(
                height: 30,
                width: 30,
                margin: EdgeInsets.only(top: 5, bottom: 5),
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(50)),
                child: Text(
                  '6',
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Text(
                  'Human Interview',
                  style: TextStyle(fontSize: 13),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                child: Text(
                  'Human Shortlist',
                  style: TextStyle(fontSize: 13),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                child: Text(
                  'Background Check',
                  style: TextStyle(fontSize: 13),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 30,
                width: 30,
                margin: EdgeInsets.only(top: 5, bottom: 5),
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(50)),
                child: Text(
                  '7',
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                width: 60,
                height: 2,
                color: Colors.black,
              ),
              Container(
                height: 30,
                width: 30,
                margin: EdgeInsets.only(top: 5, bottom: 5),
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(50)),
                child: Text(
                  '8',
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                width: 60,
                height: 2,
                color: Colors.black,
              ),
              Container(
                height: 30,
                width: 30,
                margin: EdgeInsets.only(top: 5, bottom: 5),
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(50)),
                child: Text(
                  '9',
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Text(
                  'Reference Check',
                  style: TextStyle(fontSize: 13),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Container(
                child: Text(
                  'Hired',
                  style: TextStyle(fontSize: 13),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Container(
                child: Text(
                  'Not Suitable',
                  style: TextStyle(fontSize: 13),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(Icons.arrow_back_ios_new),
            onPressed: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (ctx) => HomePage()));
            }),
        title: Text("Job Progress"),
        backgroundColor: Color.fromARGB(255, 52, 58, 64),
      ),
      body: ListView(
        children: [
          Container(
              padding: EdgeInsets.all(10),
              color: Colors.grey[100],
              child: Column(
                children: [buildjobProgress(), buildjobProgress()],
              )),
        ],
      ),
    );
  }
}

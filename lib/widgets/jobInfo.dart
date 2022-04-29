import 'package:flutter/material.dart';
import 'package:test_project_emotion/screens/detailedJobInfo.dart';

class JobInfo extends StatelessWidget {
  final String companyName;
  final String jobName;
  final String salary;
  final String date;
  JobInfo({
    required this.companyName,
    required this.jobName,
    required this.salary,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(5),
      child: Container(
        color: Colors.white,
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              companyName,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              jobName,
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  salary,
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                ),
                Text(
                  date,
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                )
              ],
            ),
            SizedBox(
              height: 5,
            ),
            IconButton(
                onPressed: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (ctx) => DetailedJobInfo(
                            companyName: 'Sunway Properties Sdn Bhd',
                            jobName: 'Training & Development',
                            expertise: 'Training & Development',
                            salary: 'RM 2000',
                            jobScope: 'Job Scope',
                            jobRequirement: 'Requirement',
                            companyOverview:
                                'We are a small team of young padawans who are passionate at what we do. We specialize in digital marketing, SEO, Google Ads, web design and copywriting. We welcome young talents who share the same passion with us. At Sterrific, we will guide you hand by hand in every step you go.',
                            registrationNo: 'SPSB123',
                            location: 'Kuala Lumpur / Kuala Lumpur - Malaysia',
                            phoneNo: '0123336699',
                            email: 'admin@sunway.com',
                            companySize: '1-50 Employees',
                            others: 'Regular Hour, Monday - Friday, Casual',
                            image: 'images/workplace1.jpg',
                          )));
                },
                icon: Icon(Icons.more_horiz))
          ],
        ),
      ),
    );
  }
}

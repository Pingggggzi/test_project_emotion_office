import 'package:flutter/material.dart';

class JobApplied extends StatelessWidget {
  final String companyName;
  final String jobName;
  final String salary;
  final form = GlobalKey<FormState>();

  JobApplied({
    required this.companyName,
    required this.jobName,
    required this.salary,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Card(
        child: Form(
            key: form,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Text(
                      companyName,
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      jobName,
                      style: TextStyle(fontSize: 18),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      salary,
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_right))
              ],
            )),
      ),
    );
  }
}

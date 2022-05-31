import 'package:flutter/material.dart';
import 'package:test_project_emotion/screens/companyVerify.dart';
import 'package:test_project_emotion/screens/dashboard.dart';
import 'package:test_project_emotion/screens/employerHomepage.dart';
import 'package:test_project_emotion/screens/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(builder: (context, snapshot) {
      return MaterialApp(home: CompanyVerification());
    });
  }
}

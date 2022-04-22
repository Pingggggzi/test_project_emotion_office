import 'package:flutter/material.dart';
import 'package:test_project_emotion/widgets/mytextformField.dart';

class ProjectVideosForm extends StatefulWidget {
  @override
  State<ProjectVideosForm> createState() => _ProjectVideosFormState();
}

class _ProjectVideosFormState extends State<ProjectVideosForm> {
  final form = GlobalKey<FormState>();
  final TextEditingController url = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(0),
      child: Card(
        child: Form(
          key: form,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                  width: double.infinity,
                  child: MyTextFormField(controller: url, name: 'Enter url'))
            ],
          ),
        ),
      ),
    );
  }
}

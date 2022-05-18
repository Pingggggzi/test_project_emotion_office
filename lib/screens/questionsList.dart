import 'package:flutter/material.dart';
import 'package:test_project_emotion/screens/questionPage.dart';

class QuestionsList extends StatefulWidget {
  @override
  State<QuestionsList> createState() => _QuestionsListState();
}

class _QuestionsListState extends State<QuestionsList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(Icons.arrow_back_ios_new),
            onPressed: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (ctx) => QuestionPage()));
            }),
        title: Text("Questions List"),
        backgroundColor: Color.fromARGB(255, 52, 58, 64),
      ),
      body: Container(
        color: Colors.grey[100],
        child: ListView(children: [
          Container(
            width: double.infinity,
            margin: EdgeInsets.all(15),
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 23, 162, 184),
                borderRadius: BorderRadius.circular(5)),
            child: ExpansionTile(
              title: Text(
                'General',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
              initiallyExpanded: true,
              children: [
                Container(
                  height: 100,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(5),
                          bottomRight: Radius.circular(5))),
                )
              ],
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.all(15),
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 23, 162, 184),
                borderRadius: BorderRadius.circular(5)),
            child: ExpansionTile(
              title: Text(
                'Skills',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
              initiallyExpanded: true,
              children: [
                Container(
                  height: 100,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(5),
                          bottomRight: Radius.circular(5))),
                )
              ],
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.all(15),
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 23, 162, 184),
                borderRadius: BorderRadius.circular(5)),
            child: ExpansionTile(
              title: Text(
                'Experience',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
              initiallyExpanded: true,
              children: [
                Container(
                  height: 100,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(5),
                          bottomRight: Radius.circular(5))),
                )
              ],
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.all(15),
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 23, 162, 184),
                borderRadius: BorderRadius.circular(5)),
            child: ExpansionTile(
              title: Text(
                'Characteristics',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
              initiallyExpanded: true,
              children: [
                Container(
                  height: 100,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(5),
                          bottomRight: Radius.circular(5))),
                )
              ],
            ),
          ),
        ]),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:test_project_emotion/screens/profile.dart';
import 'package:test_project_emotion/widgets/languageform.dart';

class LanguageSetting extends StatefulWidget {
  @override
  State<LanguageSetting> createState() => _LanguageSettingState();
}

class _LanguageSettingState extends State<LanguageSetting> {
  List<LanguageForm> listLanguage = [];
  addLanguage() {
    listLanguage.add(new LanguageForm());
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(Icons.arrow_back_ios_new),
            onPressed: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (ctx) => Profile()));
            }),
        title: Text("Language"),
        backgroundColor: Color.fromRGBO(50, 75, 205, 1),
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Text(
                    '*Noted thatBasic(1-3), Intermediate (4-7), Advance (8-10)',
                    style: TextStyle(fontSize: 15),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Flexible(
                child: ListView.builder(
              itemCount: listLanguage.length,
              itemBuilder: (_, index) => listLanguage[index],
              shrinkWrap: true,
            )),
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    addLanguage();
                  },
                  icon: Icon(Icons.add),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

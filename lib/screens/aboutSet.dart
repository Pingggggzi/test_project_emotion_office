import 'package:flutter/material.dart';
import 'package:test_project_emotion/screens/profile.dart';
import 'package:test_project_emotion/widgets/mytextformField.dart';

class AboutSetting extends StatefulWidget {
  @override
  State<AboutSetting> createState() => _AboutSettingState();
}

class _AboutSettingState extends State<AboutSetting> {
  String? country;
  String? state;

  final List listCountry = ['Malaysia', 'China'];
  final List listStateMY = [
    'Johor',
    'Kedah',
    'Kelantan',
    'Kuala Lumpur',
    'Labuan',
    'Melaka',
    'Negeri Sembilan',
    'Pahang',
    'Perak',
    'Perlis',
    'Pulau Pinang',
    'Sabah',
    'Sarawak',
    'Selangor',
    'Terengganu'
  ];
  final List listStateCN = [
    'Anhui',
    'Beijing',
    'Chongqing',
    'Fujian',
    'Guangdong',
    'Gansu',
    'Guangxi',
    'Guizhou',
    'Henan',
    'Hubei',
    'Hebei',
    'Hainan',
    'Hong Kong',
    'Heilongjiang',
    'Hunan',
    'Jilin',
    'Jiangsu',
    'Jiangxi',
    'Liaoning',
    'Macao',
    'Inner Mongolia',
    'Ningxia Hui',
    'Qinghai',
    'Sichuan',
    'Shandong',
    'Shanghai',
    'Shaanxi',
    'Shanxi',
    'Tianjin',
    'Taiwan',
    'Xinjiang Uyghur',
    'Tibet',
    'Yunnan',
    'Zhejiang'
  ];
  List listState = [];
  final TextEditingController salary = TextEditingController();

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
        title: Text("About"),
        backgroundColor: Color.fromRGBO(50, 75, 205, 1),
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  'Preferred Work Location',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: double.infinity,
              height: 60,
              padding: EdgeInsets.only(left: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Row(
                children: [
                  DropdownButton(
                    hint: Text(
                      "Select Country",
                      style: TextStyle(
                        color: Colors.grey[600],
                        fontSize: 17,
                      ),
                    ),
                    underline: SizedBox(),
                    style: TextStyle(color: Colors.black, fontSize: 18),
                    value: country,
                    onChanged: (val) {
                      state = null;
                      listState = val == 'Malaysia' ? listStateMY : listStateCN;
                      setState(() {
                        country = val as String;
                      });
                    },
                    items: listCountry.map((valueCountry) {
                      return DropdownMenuItem(
                        value: valueCountry,
                        child: Text(valueCountry),
                      );
                    }).toList(),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: double.infinity,
              height: 60,
              padding: EdgeInsets.only(left: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Row(
                children: [
                  DropdownButton(
                    hint: Text(
                      "Select State",
                      style: TextStyle(
                        color: Colors.grey[600],
                        fontSize: 17,
                      ),
                    ),
                    underline: SizedBox(),
                    style: TextStyle(color: Colors.black, fontSize: 18),
                    value: state,
                    onChanged: (val) {
                      setState(() {
                        state = val as String;
                      });
                    },
                    items: listState.map((valueState) {
                      return DropdownMenuItem(
                        value: valueState,
                        child: Text(valueState),
                      );
                    }).toList(),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text(
                  'Expected Salary',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Container(
                  width: 230,
                  child: MyTextFormField(
                    controller: salary,
                    name: 'Enter Expected Salary',
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

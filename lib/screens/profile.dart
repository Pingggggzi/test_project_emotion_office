import 'package:flutter/material.dart';
import 'package:test_project_emotion/screens/signup.dart';
import 'package:test_project_emotion/widgets/languageform.dart';
import 'package:test_project_emotion/widgets/mytextformField.dart';

import 'homepage.dart';

class Profile extends StatefulWidget {
  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  String? valueChoose;
  List listItem = ['Single', 'Married', 'Divorced', 'Widowed', 'Separated'];
  List listItem1 = ['Malaysia', 'China'];
  List listItem11 = ['Johor', 'Kedah'];
  List listItem21 = ['Anhui', 'Beijing'];
  DateTime date = DateTime(2022, 04, 15);
  String gender = 'male';
  List<LanguageForm> listLanguage = [];
  addLanguage() {
    listLanguage.add(new LanguageForm());
    setState(() {});
  }

  final TextEditingController firstName = TextEditingController();
  final TextEditingController lastName = TextEditingController();
  final TextEditingController houseAddress = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController phone = TextEditingController();
  final TextEditingController linkedin = TextEditingController();
  final TextEditingController facebook = TextEditingController();
  final TextEditingController salary = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(Icons.arrow_back_ios_new),
            onPressed: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (ctx) => HomePage()));
            }),
        title: Text("Profile Page"),
        backgroundColor: Color.fromRGBO(50, 75, 205, 1),
      ),
      body: Container(
        decoration: BoxDecoration(color: Colors.grey[100]),
        child: ListView(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage("images/User.jpg"),
                  ),
                  SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Username",
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                      SizedBox(height: 4),
                      Text(
                        "email address",
                        style: TextStyle(fontSize: 14, color: Colors.black),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.black26),
              ),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(width: 1.0, color: Colors.black26),
                      ),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            'General Information',
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                        IconButton(
                          icon: Icon(Icons.edit_rounded),
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder: (context) => AlertDialog(
                                title: Text('General information'),
                                content: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          'First Name',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        )
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
                                              controller: firstName,
                                              name: 'Enter First Name'),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          'Last Name',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        )
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
                                              controller: lastName,
                                              name: 'Enter Last Name'),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          'Birth Date',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Container(
                                      width: 230,
                                      padding: EdgeInsets.all(5),
                                      decoration: BoxDecoration(
                                        border: Border.all(color: Colors.grey),
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      child: Row(
                                        children: [
                                          Text(
                                            '${date.year}/${date.month}/${date.day}',
                                            style: TextStyle(fontSize: 18),
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          IconButton(
                                            onPressed: () async {
                                              DateTime? newDate =
                                                  await showDatePicker(
                                                context: context,
                                                initialDate: date,
                                                firstDate: DateTime(1900),
                                                lastDate: DateTime(2100),
                                              );

                                              if (newDate == null) return;

                                              setState(() => date = newDate);
                                            },
                                            icon: Icon(Icons.date_range),
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
                                          'Marital',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
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
                                              "Marital",
                                              style: TextStyle(
                                                color: Colors.grey[600],
                                                fontSize: 17,
                                              ),
                                            ),
                                            underline: SizedBox(),
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 18),
                                            value: valueChoose,
                                            onChanged: (val) {
                                              setState(() {
                                                valueChoose = val as String;
                                              });
                                            },
                                            items: listItem.map((valueItem) {
                                              return DropdownMenuItem(
                                                value: valueItem,
                                                child: Text(valueItem),
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
                                          'Gender',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Column(
                                      children: [
                                        Row(
                                          children: [
                                            Radio(
                                              value: 'Male',
                                              groupValue: gender,
                                              onChanged: (value) {
                                                setState(() {
                                                  gender = value.toString();
                                                });
                                              },
                                            ),
                                            Text('Male'),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Radio(
                                              value: 'Female',
                                              groupValue: gender,
                                              onChanged: (value) {
                                                gender = value.toString();
                                              },
                                            ),
                                            Text('Female'),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            'First Name',
                            textAlign: TextAlign.left,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Text(
                            'Last Name',
                            textAlign: TextAlign.left,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Text(
                            'Birth Date',
                            textAlign: TextAlign.left,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Text(
                            'Gender',
                            textAlign: TextAlign.left,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Text(
                            'Marital',
                            textAlign: TextAlign.left,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.black26),
              ),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(width: 1.0, color: Colors.black26),
                      ),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            'Contact',
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                        IconButton(
                          icon: Icon(Icons.edit_rounded),
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder: (context) => AlertDialog(
                                title: Text('Contact'),
                                content: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          'House Address',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        )
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
                                              controller: houseAddress,
                                              name: 'Enter House Address'),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          'Email Address',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        )
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
                                              controller: email,
                                              name: 'Your Email Address'),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          'Phone Number',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        )
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
                                              controller: phone,
                                              name: 'Enter Phone Number'),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          'LinkedIn',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        )
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
                                              controller: linkedin,
                                              name: 'Enter LinkedIn'),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          'Facebook',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        )
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
                                              controller: facebook,
                                              name: 'Enter Facebook'),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            'House Address',
                            textAlign: TextAlign.left,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Text(
                            'Email Address',
                            textAlign: TextAlign.left,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Text(
                            'Wechat',
                            textAlign: TextAlign.left,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Text(
                            'Phone number',
                            textAlign: TextAlign.left,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Text(
                            'QQ',
                            textAlign: TextAlign.left,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.black26),
              ),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(width: 1.0, color: Colors.black26),
                      ),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            'Skills',
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                        IconButton(
                          icon: Icon(Icons.edit_rounded),
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder: (context) => AlertDialog(
                                title: Text('Skills'),
                                content: Column(
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
                                    Row(
                                      children: [
                                        IconButton(
                                          onPressed: () {},
                                          icon: Icon(Icons.add),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            'Advance',
                            textAlign: TextAlign.left,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Text(
                            'Intermediate',
                            textAlign: TextAlign.left,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Text(
                            'Basic',
                            textAlign: TextAlign.left,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.black26),
              ),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(width: 1.0, color: Colors.black26),
                      ),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            'Language',
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                        IconButton(
                          icon: Icon(Icons.edit_rounded),
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder: (context) => AlertDialog(
                                title: Text('Language'),
                                content: Column(
                                  children: [
                                    Flexible(
                                        child: ListView.builder(
                                            itemCount: listLanguage.length,
                                            itemBuilder: (_, index) =>
                                                listLanguage[index])),
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
                          },
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            'Advance',
                            textAlign: TextAlign.left,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Text(
                            'Intermediate',
                            textAlign: TextAlign.left,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Text(
                            'Basic',
                            textAlign: TextAlign.left,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.black26),
              ),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(width: 1.0, color: Colors.black26),
                      ),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            'About',
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                        IconButton(
                          icon: Icon(Icons.edit_rounded),
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder: (context) => AlertDialog(
                                title: Text('About'),
                                content: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          'Preferred Work Location',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
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
                                              "Preferred Work Location",
                                              style: TextStyle(
                                                color: Colors.grey[600],
                                                fontSize: 17,
                                              ),
                                            ),
                                            underline: SizedBox(),
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 18),
                                            value: valueChoose,
                                            onChanged: (val) {
                                              setState(() {
                                                valueChoose = val as String;
                                              });
                                            },
                                            items: listItem1.map((valueItem1) {
                                              return DropdownMenuItem(
                                                value: valueItem1,
                                                child: Text(valueItem1),
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
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
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
                          },
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            'Preferred Work Location',
                            textAlign: TextAlign.left,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Text(
                            'Expected Salary',
                            textAlign: TextAlign.left,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.black26),
              ),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(width: 1.0, color: Colors.black26),
                      ),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            'Experience',
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                        IconButton(
                          icon: Icon(Icons.edit_rounded),
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder: (context) => AlertDialog(
                                title: Text('Experience'),
                                content: Column(
                                  children: [
                                    Row(
                                      children: [
                                        IconButton(
                                          onPressed: () {},
                                          icon: Icon(Icons.add),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                  Row(),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.black26),
              ),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(width: 1.0, color: Colors.black26),
                      ),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            'Education',
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                        IconButton(
                          icon: Icon(Icons.edit_rounded),
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder: (context) => AlertDialog(
                                title: Text('Education'),
                                content: Column(
                                  children: [
                                    Row(
                                      children: [
                                        IconButton(
                                          onPressed: () {},
                                          icon: Icon(Icons.add),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                  Row(),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.black26),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          'Resume',
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                      IconButton(
                        icon: Icon(Icons.edit_rounded),
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                              title: Text('Resume'),
                              content: Row(
                                children: [
                                  Icon(Icons.upload),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                  Row(),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.black26),
              ),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(width: 1.0, color: Colors.black26),
                      ),
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Text(
                                'Project Videos',
                                style: TextStyle(fontSize: 18),
                              ),
                            ),
                            IconButton(
                              icon: Icon(Icons.edit_rounded),
                              onPressed: () {
                                showDialog(
                                  context: context,
                                  builder: (context) => AlertDialog(
                                    title: Text('Project Videos'),
                                    content: Column(
                                      children: [
                                        Column(
                                          children: [
                                            Container(
                                              width: 240,
                                              height: 80,
                                              decoration: BoxDecoration(
                                                border: Border.all(
                                                    color: Colors.black26),
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                              ),
                                              child: Row(
                                                children: [
                                                  Flexible(
                                                    child: Text(
                                                      '*Noted that larger files take a longer time to save.',
                                                      style: TextStyle(
                                                          color: Colors.red,
                                                          fontSize: 15),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                            Container(
                                              width: 240,
                                              height: 80,
                                              decoration: BoxDecoration(
                                                border: Border.all(
                                                    color: Colors.black26),
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                              ),
                                              child: Row(
                                                children: [
                                                  Column(
                                                    children: [
                                                      Icon(Icons.upload),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Column(
                                          children: [
                                            Container(
                                              width: 240,
                                              height: 80,
                                              decoration: BoxDecoration(
                                                border: Border.all(
                                                    color: Colors.black26),
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                              ),
                                              child: Row(
                                                children: [
                                                  Flexible(
                                                    child: Text(
                                                      '*If any video links should be uploaded here.',
                                                      style: TextStyle(
                                                          color: Colors.red,
                                                          fontSize: 15),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Container(
                                              width: 240,
                                              height: 80,
                                              decoration: BoxDecoration(
                                                border: Border.all(
                                                    color: Colors.black26),
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                              ),
                                              child: Row(
                                                children: [
                                                  IconButton(
                                                    onPressed: () {},
                                                    icon: Icon(Icons.add),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              'Upload your demo project videos here.',
                              style: TextStyle(color: Colors.red),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Row(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

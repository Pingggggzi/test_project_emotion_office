import 'package:flutter/material.dart';
import 'package:test_project_emotion/screens/employerHomepage.dart';
import 'package:test_project_emotion/widgets/mytextformField.dart';

class CompanyProfile extends StatefulWidget {
  @override
  State<CompanyProfile> createState() => _CompanyProfileState();
}

class _CompanyProfileState extends State<CompanyProfile> {
  String companyName = 'TIANJIUPING';
  String registrationNo = 'CH980504';
  String verificationStatus = 'unverified';

  final TextEditingController address = TextEditingController();
  final TextEditingController postcode = TextEditingController();
  final TextEditingController phone = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController overview = TextEditingController();
  final TextEditingController website = TextEditingController();
  final TextEditingController benefits = TextEditingController();

  String? country;
  String? state;
  String? city;
  String? companySize;
  String? workingHour;
  String? workingDay;
  String? dressCode;
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
  List listCity = [];
  List listCompanySize = [
    '1-50',
    '51-200',
    '201-500',
    '501-1000',
    '1001-2000',
    '2001-5000',
    '>5000'
  ];
  List listWorkingHour = ['Regular Hour', 'Non-Regular Hour'];
  List listWorkingDay = [
    'Monday - Friday',
    'Monday - Saturday',
    'Monday - Sunday'
  ];
  List listDressCode = ['Formal', 'Semi-Formal', 'Smart Casual', 'Casual'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(Icons.arrow_back_ios_new),
            onPressed: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (ctx) => EmployerHomepage()));
            }),
        title: Text("Company Profile"),
        backgroundColor: Color.fromARGB(255, 52, 58, 64),
      ),
      body: Container(
        color: Colors.grey[100],
        child: Container(
          margin: EdgeInsets.all(15),
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.black12),
              borderRadius: BorderRadius.circular(5)),
          child: ListView(
            children: [
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        border:
                            Border(bottom: BorderSide(color: Colors.black12))),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: double.infinity,
                            height: 200,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Color.fromARGB(255, 219, 214, 214),
                                    width: 3.0)),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.upload),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  TextButton(
                                      onPressed: () {},
                                      child: Text(
                                        'UPLOAD COMPANY BANNER',
                                        style: TextStyle(color: Colors.black),
                                      ))
                                ]),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Color.fromARGB(255, 219, 214, 214),
                                    width: 3.0),
                                borderRadius: BorderRadius.circular(20)),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.upload),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  TextButton(
                                      onPressed: () {},
                                      child: Text(
                                        'UPLOAD COMPANY LOGO',
                                        style: TextStyle(color: Colors.black),
                                        textAlign: TextAlign.center,
                                      )),
                                ]),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                        ]),
                  ),
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        border:
                            Border(bottom: BorderSide(color: Colors.black12))),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Company Name',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            companyName,
                            style: TextStyle(fontSize: 16),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Registration No',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            registrationNo,
                            style: TextStyle(fontSize: 16),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Verification Status',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            verificationStatus,
                            style: TextStyle(fontSize: 16),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Company Size',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 5,
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
                                    "Select Company Size",
                                    style: TextStyle(
                                      color: Colors.grey[600],
                                      fontSize: 16,
                                    ),
                                  ),
                                  underline: SizedBox(),
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 16),
                                  value: companySize,
                                  onChanged: (val) {
                                    setState(() {
                                      companySize = val as String;
                                    });
                                  },
                                  items:
                                      listCompanySize.map((valueCompanySize) {
                                    return DropdownMenuItem(
                                      value: valueCompanySize,
                                      child: Text(valueCompanySize),
                                    );
                                  }).toList(),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                        ]),
                  ),
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        border:
                            Border(bottom: BorderSide(color: Colors.black12))),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Office Address',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        MyTextFormField(
                            controller: address, name: 'Enter Office Address'),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Country',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 5,
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
                                    fontSize: 16,
                                  ),
                                ),
                                underline: SizedBox(),
                                style: TextStyle(
                                    color: Colors.black, fontSize: 16),
                                value: country,
                                onChanged: (val) {
                                  state = null;
                                  listState = val == 'Malaysia'
                                      ? listStateMY
                                      : listStateCN;
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
                        Text(
                          'State',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 5,
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
                                    fontSize: 16,
                                  ),
                                ),
                                underline: SizedBox(),
                                style: TextStyle(
                                    color: Colors.black, fontSize: 16),
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
                        Text(
                          'City',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 5,
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
                                  "Select City",
                                  style: TextStyle(
                                    color: Colors.grey[600],
                                    fontSize: 16,
                                  ),
                                ),
                                underline: SizedBox(),
                                style: TextStyle(
                                    color: Colors.black, fontSize: 16),
                                value: city,
                                onChanged: (val) {
                                  setState(() {
                                    city = val as String;
                                  });
                                },
                                items: listCity.map((valueCity) {
                                  return DropdownMenuItem(
                                    value: valueCity,
                                    child: Text(valueCity),
                                  );
                                }).toList(),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Postcode',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        MyTextFormField(
                            controller: address, name: 'Enter Postcode'),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Phone',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        MyTextFormField(
                            controller: address, name: 'Enter Phone Number'),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Email',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        MyTextFormField(
                            controller: address, name: 'Enter Email Address'),
                        SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        border:
                            Border(bottom: BorderSide(color: Colors.black12))),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Company Overview',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        MyTextFormField(
                            controller: overview,
                            name: 'Enter Company Overview'),
                        SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        border:
                            Border(bottom: BorderSide(color: Colors.black12))),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Company Website',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        MyTextFormField(
                            controller: website, name: 'Enter Company Website'),
                        SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        border:
                            Border(bottom: BorderSide(color: Colors.black12))),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Benefits',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        MyTextFormField(
                            controller: benefits, name: 'Enter Benefits'),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Working Hours',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 5,
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
                                  "Select Working Hours",
                                  style: TextStyle(
                                    color: Colors.grey[600],
                                    fontSize: 16,
                                  ),
                                ),
                                underline: SizedBox(),
                                style: TextStyle(
                                    color: Colors.black, fontSize: 16),
                                value: workingHour,
                                onChanged: (val) {
                                  setState(() {
                                    workingHour = val as String;
                                  });
                                },
                                items: listWorkingHour.map((valueWorkingHour) {
                                  return DropdownMenuItem(
                                    value: valueWorkingHour,
                                    child: Text(valueWorkingHour),
                                  );
                                }).toList(),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Working Days',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 5,
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
                                  "Select Working Days",
                                  style: TextStyle(
                                    color: Colors.grey[600],
                                    fontSize: 16,
                                  ),
                                ),
                                underline: SizedBox(),
                                style: TextStyle(
                                    color: Colors.black, fontSize: 16),
                                value: workingDay,
                                onChanged: (val) {
                                  setState(() {
                                    workingDay = val as String;
                                  });
                                },
                                items: listWorkingDay.map((valueWorkingDay) {
                                  return DropdownMenuItem(
                                    value: valueWorkingDay,
                                    child: Text(valueWorkingDay),
                                  );
                                }).toList(),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Dress Code',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 5,
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
                                  "Select Dress Code",
                                  style: TextStyle(
                                    color: Colors.grey[600],
                                    fontSize: 16,
                                  ),
                                ),
                                underline: SizedBox(),
                                style: TextStyle(
                                    color: Colors.black, fontSize: 16),
                                value: dressCode,
                                onChanged: (val) {
                                  setState(() {
                                    dressCode = val as String;
                                  });
                                },
                                items: listDressCode.map((valueDressCode) {
                                  return DropdownMenuItem(
                                    value: valueDressCode,
                                    child: Text(valueDressCode),
                                  );
                                }).toList(),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'Cancle',
                            style: TextStyle(
                                fontSize: 16, color: Colors.grey[700]),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            'Save',
                            style: TextStyle(fontSize: 16),
                          ),
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                            Color.fromRGBO(50, 171, 207, 1),
                          )),
                        ),
                        SizedBox(
                          height: 20,
                        )
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:test_project_emotion/screens/employerHomepage.dart';
import 'package:test_project_emotion/widgets/mytextformField.dart';

class Advertise extends StatefulWidget {
  @override
  State<Advertise> createState() => _AdvertiseState();
}

class _AdvertiseState extends State<Advertise> {
  final TextEditingController search = TextEditingController();
  String? valueChoose;
  List listItem = [
    'Banking/Financial Services',
    'Finance - Audit/Taxation',
    'Finance - Corporate Finance/Investment/Merchant Banking',
    'Finance - General/Cost Accounting',
    'Clerical/Administrative Support',
    'Corporate Strategy/Top Management',
    'Human Resources',
    'Secretarial/Executive & Personal Assistant',
    'Digital Marketing',
    'E-Commerce',
    'Marketing/Business Development',
    'Merchandising',
    'Sales - Corporate',
    'Sales - Engineering/Technical/IT',
    'Sales - Financial Services (Insurance, Unit Trust, etc)',
    'Sales - Retail/General',
    'Sales - Telesales/Telemarketing',
    'Advertising/Media Planning',
    'Arts/Creative/Graphic Design',
    'Entertainment/Performing Arts',
    'Public Relations/Communications',
    'Customer Service',
    'Law/Legal Services',
    'Logistics/Supply Chain',
    'Personal Care/Beauty/Fitness Service',
    'Security/Armed Forces/Protective Services',
    'Social & Counselling Service',
    'Technical & Helpdesk Support',
    'Food/Beverage/Restaurant Service',
    'Hotel Management/Tourism Services',
    'Education',
    'Training & Development',
    'IT/Computer - Hardware',
    'IT/Computer - Network/System/Database Admin',
    'IT/Computer - Software',
    'Engineering - Chemical',
    'Engineering - Electrical',
    'Engineering - Electronics/Communication',
    'Engineering - Environmental/Health/Safety',
    'Engineering - Industrial',
    'Engineering - Mechanical/Automotive',
    'Engineering - Oil/Gas'
        'Engineering - Others',
    'Maintenance/Repair (Facilities & Machinery)',
    'Manufacturing/Production Operations',
    'Process Design & Control/Instrumentation',
    'Purchasing/Inventory/Material & Warehouse Management',
    'Quality Control/Assurance',
    'Architecture/Interior Design',
    'Engineering - Civil/Construction/Structural',
    'Property/Real Estate',
    'Quantity Surveying',
    'Actuarial Science/Satistic',
    'Agriculture/Forestry/Fisheries',
    'Aviation/Aircraft Maintenance',
    'Biomedical',
    'Biotechnology',
    'Chemistry',
    'Food Technology/Nutritionist',
    'Geology/Geophysics',
    'Science & Technology/Laboratory',
    'Healthcare - Doctor/Diagnosis',
    'Healthcare - Nurse/Medical Support & Assistant',
    'Healthcare - Pharmacy',
    'General Work (Housekeeper, Driver, Dispatch, Messenger, etc)',
    'Journalist/Editor',
    'Others/Category not available',
    'Publishing/Printing',
  ];
  late String companyName;
  late String jobName;
  late String salary;
  late String date;

  Widget buildAdvertisement({required companyName, required jobName}) {
    return Container(
      height: 150,
      width: double.infinity,
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black12),
          borderRadius: BorderRadius.circular(5)),
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        Text(
          companyName,
          style: TextStyle(fontSize: 18),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          jobName,
          style: TextStyle(fontSize: 16),
        ),
        Text(
          'RM 3600',
          style: TextStyle(fontSize: 14),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          '14 April 2022',
          style: TextStyle(fontSize: 14),
        ),
      ]),
    );
  }

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
        title: Text("Job Advertisement"),
        backgroundColor: Color.fromARGB(255, 52, 58, 64),
      ),
      body: Container(
        color: Colors.grey[100],
        child: Container(
          margin: EdgeInsets.all(15),
          decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black12,
              ),
              borderRadius: BorderRadius.circular(5),
              color: Colors.white),
          child: ListView(
            children: [
              Container(
                height: 200,
                width: double.infinity,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    border: Border(bottom: BorderSide(color: Colors.black12))),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Search Input',
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      MyTextFormField(controller: search, name: 'Search ...'),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Job Specializations',
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        width: double.infinity,
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black26),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: DropdownButton(
                          isExpanded: true,
                          hint: Text(
                            "Select Job Specializations ...",
                            style: TextStyle(
                              color: Colors.grey[600],
                              fontSize: 16,
                            ),
                          ),
                          underline: SizedBox(),
                          style: TextStyle(color: Colors.black, fontSize: 16),
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
                      ),
                    ]),
              ),
              buildAdvertisement(
                  companyName: 'Brandt International Sdn Bhd',
                  jobName: 'Training & Development'),
              buildAdvertisement(
                  companyName: 'Brandt International Sdn Bhd',
                  jobName: 'Computer Hardware Engineer'),
            ],
          ),
        ),
      ),
    );
  }
}

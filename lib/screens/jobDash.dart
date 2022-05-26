import 'package:flutter/material.dart';
import 'package:test_project_emotion/screens/dashboard.dart';
import 'package:test_project_emotion/screens/jobDashDetailed.dart';

class JobItem {
  final String assetImage;
  final String jobName;
  final String companyName;
  final String website;
  final String place;
  final String jobType;
  final String workTime;
  final String registrationNo;
  final String location;
  final String phoneOffice;
  final String emailOffice;
  final String companySize;
  final String others;

  const JobItem({
    required this.assetImage,
    required this.jobName,
    required this.companyName,
    required this.website,
    required this.place,
    required this.jobType,
    required this.workTime,
    required this.registrationNo,
    required this.location,
    required this.phoneOffice,
    required this.emailOffice,
    required this.companySize,
    required this.others,
  });
}

class JobDash extends StatefulWidget {
  @override
  State<JobDash> createState() => _JobDashState();
}

class _JobDashState extends State<JobDash> {
  final TextEditingController search = TextEditingController();
  final TextEditingController area = TextEditingController();
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

  List<JobItem> items = [
    JobItem(
      assetImage: 'images/workplace2.jpg',
      jobName: 'Training & Development',
      companyName: 'Brandt International Sdn Bhd',
      website: '',
      place: 'Kuala Lumpur - Kuala Lumpur',
      jobType: 'Training & Development',
      workTime: 'Full-Time',
      registrationNo: 'BISB123',
      location: 'Malaysia',
      phoneOffice: '012333333',
      emailOffice: 'admin@brandt.com',
      companySize: '> 5000 Employees',
      others: '',
    ),
    JobItem(
      assetImage: 'images/workplace2.jpg',
      jobName: 'Computer Hardware Engineer',
      companyName: 'Brandt International Sdn Bhd',
      website: '',
      place: 'Kuala Lumpur - Kuala Lumpur',
      jobType: ' IT/Computer - Hardware',
      workTime: 'Full-Time',
      registrationNo: 'BISB123',
      location: 'Malaysia',
      phoneOffice: '012333333',
      emailOffice: 'admin@brandt.com',
      companySize: '> 5000 Employees',
      others: '',
    ),
    JobItem(
      assetImage: 'images/workplace3.jpg',
      jobName: 'Computer Hardware Engineer',
      companyName: 'Telecontinent Sdn Bhd',
      website: '',
      place: 'Kuala Lumpur - Kuala Lumpur',
      jobType: 'IT/Computer - Hardware',
      workTime: 'Full-Time',
      registrationNo: 'TSB123',
      location: 'Malaysia',
      phoneOffice: '0123335858',
      emailOffice: 'admin@telecontinent.com',
      companySize: '',
      others: '',
    ),
    JobItem(
      assetImage: 'images/workplace1.jpg',
      jobName: 'Statistician/Mathematician',
      companyName: 'Sunway Properties Sdn Bhd',
      website: 'www.hiremen.cn',
      place: 'Kuala Lumpur - Kuala Lumpur',
      jobType: 'Actuarial Science/Statistic',
      workTime: 'Part-Time',
      registrationNo: 'SPSB123',
      location: 'Malaysia',
      phoneOffice: '0123336699',
      emailOffice: 'admin@sunway.com',
      companySize: '1-50 Employees',
      others: 'Regular Hour, Monday - Friday, Casual',
    ),
    JobItem(
      assetImage: 'images/workplace1.jpg',
      jobName: 'Actuarial',
      companyName: 'Sunway Properties Sdn Bhd',
      website: 'www.hiremen.cn',
      place: 'Kuala Lumpur - Kuala Lumpur',
      jobType: 'Actuarial Science/Statistic',
      workTime: 'Full-Time',
      registrationNo: 'SPSB123',
      location: 'Malaysia',
      phoneOffice: '0123336699',
      emailOffice: 'admin@sunway.com',
      companySize: '1-50 Employees',
      others: 'Regular Hour, Monday - Friday, Casual',
    ),
    JobItem(
      assetImage: 'images/workplace2.jpg',
      jobName: 'Actuarial',
      companyName: 'Brandt International Sdn Bhd',
      website: '',
      place: 'Kuala Lumpur - Kuala Lumpur',
      jobType: 'Actuarial Science/Statistic',
      workTime: 'Full-Time',
      registrationNo: 'BISB123',
      location: 'Malaysia',
      phoneOffice: '012333333',
      emailOffice: 'admin@brandt.com',
      companySize: '> 5000 Employees',
      others: '',
    ),
    JobItem(
      assetImage: 'images/workplace1.jpg',
      jobName: 'Data Scientist',
      companyName: 'Sunway Properties Sdn Bhd',
      website: 'www.hiremen.cn',
      place: 'Kuala Lumpur - Kuala Lumpur',
      jobType: 'IT/Computer - Software',
      workTime: 'Part-Time',
      registrationNo: 'SPSB123',
      location: 'Malaysia',
      phoneOffice: '0123336699',
      emailOffice: 'admin@sunway.com',
      companySize: '1-50 Employees',
      others: 'Regular Hour, Monday - Friday, Casual',
    ),
    JobItem(
      assetImage: 'images/workplace1.jpg',
      jobName: 'Copywriter',
      companyName: 'Sunway Properties Sdn Bhd',
      website: 'www.hiremen.cn',
      place: 'Kuala Lumpur - Kuala Lumpur',
      jobType: 'Advertising/Media Planning',
      workTime: 'Full-Time',
      registrationNo: 'SPSB123',
      location: 'Malaysia',
      phoneOffice: '0123336699',
      emailOffice: 'admin@sunway.com',
      companySize: '1-50 Employees',
      others: 'Regular Hour, Monday - Friday, Casual',
    ),
    JobItem(
      assetImage: 'images/workplace1.jpg',
      jobName: 'Training & Development',
      companyName: 'Sunway Properties Sdn Bhd',
      website: 'www.hiremen.cn',
      place: 'Kuala Lumpur - Kuala Lumpur',
      jobType: 'Training & Development',
      workTime: 'Full-Time',
      registrationNo: 'SPSB123',
      location: 'Malaysia',
      phoneOffice: '0123336699',
      emailOffice: 'admin@sunway.com',
      companySize: '1-50 Employees',
      others: 'Regular Hour, Monday - Friday, Casual',
    ),
    JobItem(
      assetImage: 'images/workplace1.jpg',
      jobName: 'Actuarial',
      companyName: 'Sunway Properties Sdn Bhd',
      website: 'www.hiremen.cn',
      place: 'Kuala Lumpur - Kuala Lumpur',
      jobType: 'Actuarial Science/Statistic',
      workTime: 'Full-Time',
      registrationNo: 'SPSB123',
      location: 'Malaysia',
      phoneOffice: '0123336699',
      emailOffice: 'admin@sunway.com',
      companySize: '1-50 Employees',
      others: 'Regular Hour, Monday - Friday, Casual',
    ),
  ];

  Widget buildJob({required JobItem item}) {
    return Container(
      width: 220,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black12),
          borderRadius: BorderRadius.circular(5)),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                border: Border(bottom: BorderSide(color: Colors.black12))),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        height: 60,
                        width: 80,
                        child: AspectRatio(
                          aspectRatio: 4 / 3,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(5),
                            child: Image(
                              image: AssetImage(
                                item.assetImage,
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        )),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  item.companyName,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 5,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                item.jobName,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                item.website,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey[600],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Icon(
                    Icons.place,
                    size: 18,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    item.place,
                    style: TextStyle(fontSize: 15),
                  )
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Icon(
                    Icons.work,
                    size: 18,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    item.jobType,
                    style: TextStyle(fontSize: 15),
                  )
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Icon(
                    Icons.schedule,
                    size: 18,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    item.workTime,
                    style: TextStyle(fontSize: 15),
                  )
                ],
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (ctx) => JobDashDetailed(item: item)));
            },
            child: Text(
              'Apply',
              style: TextStyle(fontSize: 16),
            ),
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
              Color.fromRGBO(50, 75, 205, 1),
            )),
          )
        ],
      ),
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
                  MaterialPageRoute(builder: (ctx) => Dashboard()));
            }),
        title: Text("Jobs"),
        backgroundColor: Color.fromARGB(255, 52, 58, 64),
      ),
      body: ListView(
        shrinkWrap: true,
        children: [
          Container(
            height: 320,
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.black12),
              borderRadius: BorderRadius.circular(5),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Search Input',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black12),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: TextField(
                    controller: search,
                    decoration: InputDecoration(
                        icon: Icon(
                          Icons.search,
                          color: Colors.black12,
                        ),
                        // suffixIcon:
                        //     ? GestureDetector(
                        //         child: Icon(
                        //           Icons.close,
                        //           color: Colors.black26,
                        //         ),
                        //         onTap: () {
                        //           search.clear();
                        //           widget.onChanged('');
                        //         },
                        //       )
                        //     : null,
                        hintText: 'Search...',
                        border: InputBorder.none),
                    // onChanged: widget.onChanged,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Area',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black12),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: TextField(
                    controller: area,
                    decoration: InputDecoration(
                        icon: Icon(
                          Icons.search,
                          color: Colors.black26,
                        ),
                        hintText: 'Area...',
                        border: InputBorder.none),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Job Specializations',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black12),
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
              ],
            ),
          ),
          Container(
            // margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            // height: 500,

            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 500,
                    width: 350,
                    child: ListView.separated(
                        itemCount: 10,
                        separatorBuilder: (context, _) => SizedBox(
                              height: 10,
                            ),
                        itemBuilder: ((context, index) =>
                            buildJob(item: items[index]))),
                  )
                ]),
          ),
        ],
      ),
    );
  }
}

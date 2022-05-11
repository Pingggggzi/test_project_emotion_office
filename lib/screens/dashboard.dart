import 'package:flutter/material.dart';
import 'package:test_project_emotion/screens/login.dart';
// import 'package:carousel_pro/carousel_pro.dart';

class JobItem {
  final String assetImage;
  final String jobName;
  final String companyName;

  const JobItem({
    required this.assetImage,
    required this.jobName,
    required this.companyName,
  });
}

class Dashboard extends StatefulWidget {
  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
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
    ),
    JobItem(
      assetImage: 'images/workplace2.jpg',
      jobName: 'Computer Hardware Engineer',
      companyName: 'Brandt International Sdn Bhd',
    ),
    JobItem(
      assetImage: 'images/workplace3.jpg',
      jobName: 'Computer Hardware Engineer',
      companyName: 'Telecontinent Sdn Bhd',
    ),
    JobItem(
      assetImage: 'images/workplace1.jpg',
      jobName: 'Statistician/Mathematician',
      companyName: 'Sunway Properties Sdn Bhd',
    ),
    JobItem(
      assetImage: 'images/workplace1.jpg',
      jobName: 'Actuarial',
      companyName: 'Sunway Properties Sdn Bhd',
    ),
    JobItem(
      assetImage: 'images/workplace2.jpg',
      jobName: 'Actuarial',
      companyName: 'Brandt International Sdn Bhd',
    ),
  ];

  Widget buildJob({required JobItem item}) {
    return Container(
      width: 200,
      color: Colors.white,
      child: Column(
        children: [
          Expanded(
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
          SizedBox(
            height: 5,
          ),
          Text(
            item.jobName,
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
          Text(
            item.companyName,
            style: TextStyle(fontSize: 13),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HIREMEN'),
        backgroundColor: Color.fromARGB(255, 52, 58, 64),
        actions: [
          Row(
            children: [
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (ctx) => Login()));
                  },
                  child: Text(
                    'Login',
                    style: TextStyle(fontSize: 15),
                  )),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    'Register',
                    style: TextStyle(fontSize: 15),
                  )),
            ],
          )
        ],
      ),
      body: ListView(
        shrinkWrap: true,
        children: [
          Container(
            margin: EdgeInsets.all(10),
            height: 200,
            color: Colors.black,
            child: Image(image: AssetImage('images/dashboard1.jpg')),
            // child: Carousel(
            //   dotColor: Colors.white,
            //   dotBgColor: Colors.black,
            //   dotIncreasedColor: Colors.blue,
            //   dotSize: 20,
            //   dotIncreaseSize: 10,
            //   autoplay: true,
            //   images: [
            //     AssetImage('images/dashboard1.jpg'),
            //     AssetImage('images/dashboard3.jpg'),
            //   ],
            // ),
          ),
          Container(
            height: 320,
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.black26),
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
                    border: Border.all(color: Colors.black26),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: TextField(
                    controller: search,
                    decoration: InputDecoration(
                        icon: Icon(
                          Icons.search,
                          color: Colors.black26,
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
                    border: Border.all(color: Colors.black26),
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
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(15),
            height: 260,
            color: Colors.grey[200],
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'Recommended for You',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 160,
                    child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemCount: 6,
                        separatorBuilder: (context, _) => SizedBox(
                              width: 10,
                            ),
                        itemBuilder: ((context, index) =>
                            buildJob(item: items[index]))),
                  )
                ]),
          )
        ],
      ),
    );
  }
}

import 'package:carousel_pro_nullsafety/carousel_pro_nullsafety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:test_project_emotion/screens/companyDash.dart';
import 'package:test_project_emotion/screens/employerSignUp.dart';
import 'package:test_project_emotion/screens/jobDash.dart';
import 'package:test_project_emotion/screens/login.dart';
import 'package:test_project_emotion/screens/signup.dart';
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

class CompanyItem {
  final String assetImage;

  final String companyName;
  final String website;

  const CompanyItem({
    required this.assetImage,
    required this.companyName,
    required this.website,
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

  List<CompanyItem> itemsCompany = [
    CompanyItem(
        assetImage: 'images/workplace1.jpg',
        companyName: 'Sunway Properties Sdn Bhd',
        website: 'www.hiremen.cn'),
    CompanyItem(
        assetImage: 'images/workplace2.jpg',
        companyName: 'Brandt International Sdn Bhd',
        website: ''),
    CompanyItem(
        assetImage: 'images/workplace3.jpg',
        companyName: 'Telecontinent Sdn Bhd',
        website: ''),
  ];

  Widget buildJob({required JobItem item}) {
    return Container(
      width: 220,
      padding: EdgeInsets.all(10),
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

  Widget buildCompany({required CompanyItem itemCompany}) {
    return Container(
      width: 220,
      padding: EdgeInsets.all(10),
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
                  itemCompany.assetImage,
                ),
                fit: BoxFit.cover,
              ),
            ),
          )),
          SizedBox(
            height: 5,
          ),
          Text(
            itemCompany.companyName,
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
          Text(
            itemCompany.website,
            style: TextStyle(fontSize: 13),
          )
        ],
      ),
    );
  }

  final isDialOpen = ValueNotifier(false);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if (isDialOpen.value) {
          isDialOpen.value = false;

          return false;
        } else {
          return true;
        }
      },
      child: Scaffold(
        floatingActionButton: SpeedDial(
          animatedIcon: AnimatedIcons.menu_close,
          backgroundColor: Color.fromARGB(255, 52, 58, 64),
          overlayColor: Colors.black,
          overlayOpacity: 0.4,
          spacing: 10,
          spaceBetweenChildren: 10,
          closeManually: true,
          openCloseDial: isDialOpen,
          children: [
            SpeedDialChild(
              child: Icon(Icons.work),
              backgroundColor: Color.fromRGBO(50, 75, 205, 1),
              label: 'Jobs',
              onTap: () => Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (ctx) => JobDash())),
            ),
            SpeedDialChild(
              child: Icon(Icons.business),
              backgroundColor: Color.fromARGB(255, 23, 162, 184),
              label: 'Companies',
              onTap: () => Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (ctx) => CompanyDash())),
            ),
          ],
        ),
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
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                                title: Text('Confirmation'),
                                content: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      padding:
                                          EdgeInsets.fromLTRB(0, 10, 0, 10),
                                      decoration: BoxDecoration(
                                          border: Border(
                                              bottom: BorderSide(
                                                  color: Colors.black12),
                                              top: BorderSide(
                                                  color: Colors.black12))),
                                      child: Text(
                                        'Are you want to register as a employer or candidate ?',
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.grey[800]),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        ElevatedButton(
                                          onPressed: () {
                                            Navigator.of(context)
                                                .pushReplacement(
                                                    MaterialPageRoute(
                                                        builder: (ctx) =>
                                                            EmployerSignUp()));
                                          },
                                          child: Text(
                                            'Employer',
                                            style: TextStyle(fontSize: 16),
                                          ),
                                          style: ButtonStyle(
                                              backgroundColor:
                                                  MaterialStateProperty.all(
                                                      Colors.orange)),
                                        ),
                                        ElevatedButton(
                                          onPressed: () {
                                            Navigator.of(context)
                                                .pushReplacement(
                                                    MaterialPageRoute(
                                                        builder: (ctx) =>
                                                            SignUp()));
                                          },
                                          child: Text(
                                            'Candidate',
                                            style: TextStyle(fontSize: 16),
                                          ),
                                          style: ButtonStyle(
                                              backgroundColor:
                                                  MaterialStateProperty.all(
                                                      Color.fromRGBO(
                                                          50, 75, 205, 1))),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ));
                    },
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
              // child: AspectRatio(
              //     aspectRatio: 4 / 3,
              //     child: Image(
              //       image: AssetImage('images/dashboard1.jpg'),
              //       fit: BoxFit.cover,
              //     )),
              child: Carousel(
                dotColor: Color.fromARGB(255, 52, 58, 64),
                dotBgColor: Colors.black,
                dotIncreasedColor: Color.fromRGBO(50, 75, 205, 1),
                dotSize: 20,
                dotIncreaseSize: 10,
                autoplay: true,
                images: [
                  Image(image: AssetImage('images/dashboard1.jpg')),
                  Image(image: AssetImage('images/dashboard3.jpg')),
                ],
              ),
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
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
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
            ),
            Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(15),
              height: 300,
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'Top Companies',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 160,
                    child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemCount: 3,
                        separatorBuilder: (context, _) => SizedBox(
                              width: 10,
                            ),
                        itemBuilder: ((context, index) =>
                            buildCompany(itemCompany: itemsCompany[index]))),
                  )
                ],
              ),
            ),
            Container(
              height: 700,
              color: Color.fromRGBO(50, 75, 205, 1),
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(15),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Benefits',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 280,
                      width: double.infinity,
                      color: Colors.white,
                      padding: EdgeInsets.all(10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Jobseeker Benefits',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromRGBO(50, 75, 205, 1),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  '. No travel and exposure to infection risks',
                                  style: TextStyle(fontSize: 16),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  ". Complete your interview when you're at your best time and peak energy",
                                  style: TextStyle(fontSize: 16),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  '. Find your best job through AI-driven match',
                                  style: TextStyle(fontSize: 16),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  '. Showcase your skills through video recordings as part of your online resume',
                                  style: TextStyle(fontSize: 16),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  '. Identify reputable employers',
                                  style: TextStyle(fontSize: 16),
                                ),
                              ]),
                          SizedBox(
                            height: 10,
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            child: Text('Learn More'),
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    Color.fromRGBO(50, 75, 205, 1))),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 320,
                      width: double.infinity,
                      color: Colors.white,
                      padding: EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Employer Benefits',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromRGBO(50, 75, 205, 1),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  '. Automate the first-level interview and let AI filter for the best candidates',
                                  style: TextStyle(fontSize: 16),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  ". Automated emotional screening and personality analysis",
                                  style: TextStyle(fontSize: 16),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  '. Get your management team to do joint follow-up interviews through built-in web conferencing',
                                  style: TextStyle(fontSize: 16),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  '. Combine human and AI ratings to uncover the best candidates',
                                  style: TextStyle(fontSize: 16),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  '. Integrated background search to verify candidates',
                                  style: TextStyle(fontSize: 16),
                                ),
                              ]),
                          SizedBox(
                            height: 10,
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            child: Text('Learn More'),
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    Color.fromRGBO(50, 75, 205, 1))),
                          )
                        ],
                      ),
                    ),
                  ]),
            )
          ],
        ),
      ),
    );
  }
}

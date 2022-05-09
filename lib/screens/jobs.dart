import 'package:flutter/material.dart';
import 'package:test_project_emotion/screens/homepage.dart';
import 'package:test_project_emotion/screens/detailedJobInfo.dart';

class Jobs extends StatefulWidget {
  // late final String text;
  // late final ValueChanged<String> onChanged;
  // late final String hintText;

  @override
  State<Jobs> createState() => _JobsState();
}

class _JobsState extends State<Jobs> {
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

  @override
  Widget buildJobsInfo1() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(5),
      child: Container(
        color: Colors.white,
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Brandt International Sdn Bhd',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              'Training & Development',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'RM 3600',
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                ),
                Text(
                  '14 April 2022',
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                )
              ],
            ),
            SizedBox(
              height: 5,
            ),
            IconButton(
                onPressed: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (ctx) => DetailedJobInfo(
                            companyName: 'Brandt International Sdn Bhd',
                            jobName: 'Training & Development',
                            expertise: 'Training & Development',
                            salary: 'RM 3600',
                            jobScope: 'test',
                            jobRequirement: 'test',
                            companyOverview: '',
                            registrationNo: 'BISB123',
                            location: 'Kuala Lumpur / Kuala Lumpur - Malaysia',
                            phoneNo: '012333333',
                            email: 'admin@brandt.com',
                            companySize: '> 5000 Employees',
                            others: '',
                            image: 'images/workplace2.jpg',
                          )));
                },
                icon: Icon(Icons.more_horiz))
          ],
        ),
      ),
    );
  }

  Widget buildJobsInfo2() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(5),
      child: Container(
        color: Colors.white,
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Brandt International Sdn Bhd',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              'Computer Hardware Engineer',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'RM 3000',
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                ),
                Text(
                  '14 April 2022',
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                )
              ],
            ),
            SizedBox(
              height: 5,
            ),
            IconButton(
                onPressed: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (ctx) => DetailedJobInfo(
                            companyName: 'Brandt International Sdn Bhd',
                            jobName: 'Computer Hardware Engineer',
                            expertise: 'IT/Computer - Hardware',
                            salary: 'RM 3000',
                            jobScope: 'test',
                            jobRequirement: 'test',
                            companyOverview: '',
                            registrationNo: 'BISB123',
                            location: 'Kuala Lumpur / Kuala Lumpur - Malaysia',
                            phoneNo: '012333333',
                            email: 'admin@brandt.com',
                            companySize: '> 5000 Employees',
                            others: '',
                            image: 'images/workplace2.jpg',
                          )));
                },
                icon: Icon(Icons.more_horiz))
          ],
        ),
      ),
    );
  }

  Widget buildJobsInfo3() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(5),
      child: Container(
        color: Colors.white,
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Telecontinent Sdn Bhd',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              'Computer Hardware Engineer',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'RM 3500',
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                ),
                Text(
                  '14 April 2022',
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                )
              ],
            ),
            SizedBox(
              height: 5,
            ),
            IconButton(
                onPressed: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (ctx) => DetailedJobInfo(
                            companyName: 'Telecontinent Sdn Bhd',
                            jobName: 'Computer Hardware Engineer',
                            expertise: 'IT/Computer - Hardware',
                            salary: 'RM 3500',
                            jobScope: 'test',
                            jobRequirement: 'test',
                            companyOverview: '',
                            registrationNo: 'TSB123',
                            location: 'Kuala Lumpur / Kuala Lumpur - Malaysia',
                            phoneNo: '0123335858',
                            email: 'admin@telecontinent.com',
                            companySize: '',
                            others: '',
                            image: 'images/workplace3.jpg',
                          )));
                },
                icon: Icon(Icons.more_horiz))
          ],
        ),
      ),
    );
  }

  Widget buildJobsInfo4() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(5),
      child: Container(
        color: Colors.white,
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Sunway Properties Sdn Bhd',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              'Statistician/Mathematician',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'RM 2800',
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                ),
                Text(
                  '06 April 2022',
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                )
              ],
            ),
            SizedBox(
              height: 5,
            ),
            IconButton(
                onPressed: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (ctx) => DetailedJobInfo(
                            companyName: 'Sunway Properties Sdn Bhd',
                            jobName: 'Statistician/Mathematician',
                            expertise: 'Actuarial\nScience/Statistic',
                            salary: 'RM 2800',
                            jobScope: 'tester',
                            jobRequirement: 'tester',
                            companyOverview:
                                'We are a small team of young padawans who are passionate at what we do. We specialize in digital marketing, SEO, Google Ads, web design and copywriting. We welcome young talents who share the same passion with us. At Sterrific, we will guide you hand by hand in every step you go.',
                            registrationNo: 'SPSB123',
                            location: 'Kuala Lumpur / Kuala Lumpur - Malaysia',
                            phoneNo: '0123336699',
                            email: 'admin@sunway.com',
                            companySize: '1-50 Employees',
                            others: 'Regular Hour, Monday - Friday, Casual',
                            image: 'images/workplace1.jpg',
                          )));
                },
                icon: Icon(Icons.more_horiz))
          ],
        ),
      ),
    );
  }

  Widget buildJobsInfo5() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(5),
      child: Container(
        color: Colors.white,
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Sunway Properties Sdn Bhd',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              'Actuarial',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'RM 2000',
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                ),
                Text(
                  '21 December 2021',
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                )
              ],
            ),
            SizedBox(
              height: 5,
            ),
            IconButton(
                onPressed: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (ctx) => DetailedJobInfo(
                            companyName: 'Sunway Properties Sdn Bhd',
                            jobName: 'Actuarial',
                            expertise: 'Actuarial\nScience/Statistic',
                            salary: 'RM 2000',
                            jobScope: 'Job Scope',
                            jobRequirement: 'Requirement',
                            companyOverview:
                                'We are a small team of young padawans who are passionate at what we do. We specialize in digital marketing, SEO, Google Ads, web design and copywriting. We welcome young talents who share the same passion with us. At Sterrific, we will guide you hand by hand in every step you go.',
                            registrationNo: 'SPSB123',
                            location: 'Kuala Lumpur / Kuala Lumpur - Malaysia',
                            phoneNo: '0123336699',
                            email: 'admin@sunway.com',
                            companySize: '1-50 Employees',
                            others: 'Regular Hour, Monday - Friday, Casual',
                            image: 'images/workplace1.jpg',
                          )));
                },
                icon: Icon(Icons.more_horiz))
          ],
        ),
      ),
    );
  }

  Widget buildJobsInfo6() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(5),
      child: Container(
        color: Colors.white,
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Brandt International Sdn Bhd',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              'Actuarial',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'RM 5000',
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                ),
                Text(
                  '06 December 2021',
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                )
              ],
            ),
            SizedBox(
              height: 5,
            ),
            IconButton(
                onPressed: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (ctx) => DetailedJobInfo(
                            companyName: 'Brandt International Sdn Bhd',
                            jobName: 'Actuarial',
                            expertise: 'Actuarial\nScience/Statistic',
                            salary: 'RM 5000',
                            jobScope: 'Job Scope',
                            jobRequirement: 'Requirement',
                            companyOverview: '',
                            registrationNo: 'BISB123',
                            location: 'Kuala Lumpur / Kuala Lumpur - Malaysia',
                            phoneNo: '012333333',
                            email: 'admin@brandt.com',
                            companySize: '> 5000 Employees',
                            others: '',
                            image: 'images/workplace2.jpg',
                          )));
                },
                icon: Icon(Icons.more_horiz))
          ],
        ),
      ),
    );
  }

  Widget buildJobsInfo7() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(5),
      child: Container(
        color: Colors.white,
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Sunway Properties Sdn Bhd',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              'Data Scientist',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '¥ 2000',
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                ),
                Text(
                  '29 November 2021',
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                )
              ],
            ),
            SizedBox(
              height: 5,
            ),
            IconButton(
                onPressed: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (ctx) => DetailedJobInfo(
                            companyName: 'Sunway Properties Sdn Bhd',
                            jobName: 'Data Scientist',
                            expertise: 'IT/Computer - Software',
                            salary: '¥ 2000',
                            jobScope:
                                "1. Has performing to people, making people happy and giving people good memories / experience always been something that you are passionate about?\n2. Are you having difficulty in finding the right platform / stage for you to showcase your passion?\n3. Is horror movies your always go to genre?\nIf you say yes to all these, READ on!\nHauntu Malaysia is looking for part time actors/actresses\nYou need engage in immersive acting. Well, as mentioned, we are the most unique horror-themed immersive theatre in Malaysia. But don't worry if you don't already have experience in immersive acting, as training will be provided.\nYou need reset the theatre grounds for the next group of customers. Once again, don't worry as training will be provided.\nYou will need to deliver a fun and exciting experience for the customers while ensuring that the sessions are operated safely as per the standard operating procedure.\nYour are also required to maintain a clean, safe and orderly work environment. Anyways, no one likes adirty, messy and hazardous work place right?\nYou are also required to perform other duties as assigned and be punctual to work. And no one likes someone who shows up late for meetings either right?",
                            jobRequirement:
                                '1. Have performing experience\n2. Minimum 6 months commitment\n3. Speaks good English\n4. Someone who is fun, friendly, excellent team player and possesses a positive attitude\n5. Someone who is eager to learn\n6. Customer oriented\n7. Able to effectively communicate in one-on-one and with groups\n8. Able to work independently with minimal supervison\n9. Able to react fast to unforeseen circumstances\n10. Flexible in working hour/day',
                            companyOverview:
                                'We are a small team of young padawans who are passionate at what we do. We specialize in digital marketing, SEO, Google Ads, web design and copywriting. We welcome young talents who share the same passion with us. At Sterrific, we will guide you hand by hand in every step you go.',
                            registrationNo: 'SPSB123',
                            location: 'Kuala Lumpur / Kuala Lumpur - Malaysia',
                            phoneNo: '0123336699',
                            email: 'admin@sunway.com',
                            companySize: '1-50 Employees',
                            others: 'Regular Hour, Monday - Friday, Casual',
                            image: 'images/workplace1.jpg',
                          )));
                },
                icon: Icon(Icons.more_horiz))
          ],
        ),
      ),
    );
  }

  Widget buildJobsInfo8() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(5),
      child: Container(
        color: Colors.white,
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Sunway Properties Sdn Bhd',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              'Copywriter',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'RM 3000',
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                ),
                Text(
                  '19 November 2021',
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                )
              ],
            ),
            SizedBox(
              height: 5,
            ),
            IconButton(
                onPressed: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (ctx) => DetailedJobInfo(
                            companyName: 'Sunway Properties Sdn Bhd',
                            jobName: 'Copywriter',
                            expertise: 'Advertising/Media\nPlanning',
                            salary: 'RM 3000',
                            jobScope: 'Job Scope',
                            jobRequirement: 'Requirement',
                            companyOverview:
                                'We are a small team of young padawans who are passionate at what we do. We specialize in digital marketing, SEO, Google Ads, web design and copywriting. We welcome young talents who share the same passion with us. At Sterrific, we will guide you hand by hand in every step you go.',
                            registrationNo: 'SPSB123',
                            location: 'Kuala Lumpur / Kuala Lumpur - Malaysia',
                            phoneNo: '0123336699',
                            email: 'admin@sunway.com',
                            companySize: '1-50 Employees',
                            others: 'Regular Hour, Monday - Friday, Casual',
                            image: 'images/workplace1.jpg',
                          )));
                },
                icon: Icon(Icons.more_horiz))
          ],
        ),
      ),
    );
  }

  Widget buildJobsInfo9() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(5),
      child: Container(
        color: Colors.white,
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Sunway Properties Sdn Bhd',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              'Traning & Development',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'RM 2000',
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                ),
                Text(
                  '19 November 2021',
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                )
              ],
            ),
            SizedBox(
              height: 5,
            ),
            IconButton(
                onPressed: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (ctx) => DetailedJobInfo(
                            companyName: 'Sunway Properties Sdn Bhd',
                            jobName: 'Training & Development',
                            expertise: 'Training & Development',
                            salary: 'RM 2000',
                            jobScope: 'Job Scope',
                            jobRequirement: 'Requirement',
                            companyOverview:
                                'We are a small team of young padawans who are passionate at what we do. We specialize in digital marketing, SEO, Google Ads, web design and copywriting. We welcome young talents who share the same passion with us. At Sterrific, we will guide you hand by hand in every step you go.',
                            registrationNo: 'SPSB123',
                            location: 'Kuala Lumpur / Kuala Lumpur - Malaysia',
                            phoneNo: '0123336699',
                            email: 'admin@sunway.com',
                            companySize: '1-50 Employees',
                            others: 'Regular Hour, Monday - Friday, Casual',
                            image: 'images/workplace1.jpg',
                          )));
                },
                icon: Icon(Icons.more_horiz))
          ],
        ),
      ),
    );
  }

  Widget buildJobsInfo10() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(5),
      child: Container(
        color: Colors.white,
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Sunway Properties Sdn Bhd',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              'Actuarial',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'RM 2000',
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                ),
                Text(
                  '11 November 2021',
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                )
              ],
            ),
            SizedBox(
              height: 5,
            ),
            IconButton(
                onPressed: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (ctx) => DetailedJobInfo(
                            companyName: 'Sunway Properties Sdn Bhd',
                            jobName: 'Actuarial',
                            expertise: 'Actuarial\nScience/Statistic',
                            salary: 'RM 2000',
                            jobScope: 'Job Scope',
                            jobRequirement: 'Requirement\nasdasd',
                            companyOverview:
                                'We are a small team of young padawans who are passionate at what we do. We specialize in digital marketing, SEO, Google Ads, web design and copywriting. We welcome young talents who share the same passion with us. At Sterrific, we will guide you hand by hand in every step you go.',
                            registrationNo: 'SPSB123',
                            location: 'Kuala Lumpur / Kuala Lumpur - Malaysia',
                            phoneNo: '0123336699',
                            email: 'admin@sunway.com',
                            companySize: '1-50 Employees',
                            others: 'Regular Hour, Monday - Friday, Casual',
                            image: 'images/workplace1.jpg',
                          )));
                },
                icon: Icon(Icons.more_horiz))
          ],
        ),
      ),
    );
  }

  Widget buildJobsInfos() {
    return Column(
      children: [
        buildJobsInfo1(),
        SizedBox(
          height: 10,
        ),
        buildJobsInfo2(),
        SizedBox(
          height: 10,
        ),
        buildJobsInfo3(),
        SizedBox(
          height: 10,
        ),
        buildJobsInfo4(),
        SizedBox(
          height: 10,
        ),
        buildJobsInfo5(),
        SizedBox(
          height: 10,
        ),
        buildJobsInfo6(),
        SizedBox(
          height: 10,
        ),
        buildJobsInfo7(),
        SizedBox(
          height: 10,
        ),
        buildJobsInfo8(),
        SizedBox(
          height: 10,
        ),
        buildJobsInfo9(),
        SizedBox(
          height: 10,
        ),
        buildJobsInfo10(),
      ],
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(Icons.arrow_back_ios_new),
            onPressed: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (ctx) => HomePage()));
            }),
        title: Text("Jobs Page"),
        backgroundColor: Color.fromARGB(255, 52, 58, 64),
      ),
      body: ListView(
        children: [
          Container(
            color: Colors.grey[100],
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                Container(
                  height: 320,
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
                SizedBox(
                  height: 10,
                ),
                buildJobsInfos(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

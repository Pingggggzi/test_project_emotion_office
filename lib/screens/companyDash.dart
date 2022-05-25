import 'package:flutter/material.dart';
import 'package:test_project_emotion/screens/dashboard.dart';

class NewCompanyItem {
  final String newCompanyName;
  const NewCompanyItem({required this.newCompanyName});
}

class LargeCorporationItem {
  final String largeCorporationName;
  const LargeCorporationItem({required this.largeCorporationName});
}

class SmallCorporationItem {
  final String smallCorporationName;
  const SmallCorporationItem({required this.smallCorporationName});
}

class CompanyDash extends StatefulWidget {
  @override
  State<CompanyDash> createState() => _CompanyDashState();
}

class _CompanyDashState extends State<CompanyDash> {
  List<NewCompanyItem> itemsNewCompany = [
    NewCompanyItem(newCompanyName: 'Telecontinent Sdn Bhd'),
    NewCompanyItem(newCompanyName: 'Brandt International Sdn Bhd'),
    NewCompanyItem(newCompanyName: 'Sunway Properties Sdn Bhd'),
  ];
  List<LargeCorporationItem> itemsLargeCorporation = [
    // LargeCorporationItem(largeCorporationName: 'TIANJIUPING')
  ];
  List<SmallCorporationItem> itemsSmallCorporation = [
    SmallCorporationItem(smallCorporationName: 'Sunway Properties Sdn Bhd')
  ];
  Widget buildNewCompanies({required NewCompanyItem itemNewCompany}) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 120,
            height: 80,
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.black54),
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black54,
                    offset: Offset(10, 5),
                    blurRadius: 3,
                    spreadRadius: 0,
                  ),
                ]),
            child: Center(
              child: Text(
                itemNewCompany.newCompanyName,
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildLargeCorporation(
      {required LargeCorporationItem itemLargeCorporation}) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 120,
            height: 80,
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.black54),
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black54,
                    offset: Offset(10, 5),
                    blurRadius: 3,
                    spreadRadius: 0,
                  ),
                ]),
            child: Center(
              child: Text(
                itemLargeCorporation.largeCorporationName,
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildSmallCorporation(
      {required SmallCorporationItem itemSmallCorporation}) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 120,
            height: 80,
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.black54),
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black54,
                    offset: Offset(10, 5),
                    blurRadius: 3,
                    spreadRadius: 0,
                  ),
                ]),
            child: Center(
              child: Text(
                itemSmallCorporation.smallCorporationName,
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.center,
              ),
            ),
          ),
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
        title: Text("Companies"),
        backgroundColor: Color.fromARGB(255, 52, 58, 64),
      ),
      body: Container(
        color: Colors.grey[100],
        child: Container(
          margin: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'New Listed Company',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 150,
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: ((context, index) => buildNewCompanies(
                        itemNewCompany: itemsNewCompany[index])),
                    separatorBuilder: (context, _) => SizedBox(
                          width: 10,
                        ),
                    itemCount: 3),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Large Corporation',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 150,
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (((context, index) => buildLargeCorporation(
                        itemLargeCorporation: itemsLargeCorporation[index]))),
                    separatorBuilder: (context, _) => SizedBox(
                          width: 10,
                        ),
                    itemCount: 0),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Small Corporation',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 150,
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (((context, index) => buildSmallCorporation(
                        itemSmallCorporation: itemsSmallCorporation[index]))),
                    separatorBuilder: (context, _) => SizedBox(
                          width: 10,
                        ),
                    itemCount: 1),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

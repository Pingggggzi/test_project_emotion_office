import 'package:flutter/material.dart';
import 'package:test_project_emotion/screens/dashboard.dart';
import 'package:test_project_emotion/screens/detailedJobAppliedInfo.dart';
import 'package:test_project_emotion/screens/detailedJobInfo.dart';
import 'package:test_project_emotion/screens/interview.dart';
import 'package:test_project_emotion/screens/jobprogress.dart';
import 'package:test_project_emotion/screens/jobs.dart';
import 'package:test_project_emotion/screens/login.dart';
import 'package:test_project_emotion/screens/profile.dart';
import 'package:test_project_emotion/screens/setting.dart';
import 'package:test_project_emotion/widgets/jobApplied.dart';
import 'package:test_project_emotion/widgets/recording.dart';

class HomePage extends StatefulWidget {
  @override
  HomePageState createState() => HomePageState();
}

// UserProvider userProvider;

class HomePageState extends State<HomePage> {
  @override
  // void initState() {
  //   super.initState();
  // }
  List<JobApplied> listJobApplied = [];
  addJobApplied() {
    listJobApplied.add(new JobApplied(
      companyName: 'Brandt International Sdn Bhd',
      jobName: 'Computer Hardware Engineer',
      salary: 'RM 2000',
    ));
    setState(() {});
  }

  buildJobApplied() {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(8),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black12),
          borderRadius: BorderRadius.circular(5)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            children: [
              Text(
                "Brandt International Sdn Bhd",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "Training & Development",
                style: TextStyle(fontSize: 15),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "RM 3600",
                style: TextStyle(fontSize: 13),
              ),
            ],
          ),
          IconButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (ctx) => DetailedJobAppliedInfo(
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
              icon: Icon(Icons.arrow_right))
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: _buildMyDrawer(),
        appBar: AppBar(
          leading: RoundedIconButton(
            iconData: Icons.menu,
            press: () {
              Scaffold.of(context).openDrawer();
            },
          ),
          backgroundColor: Color.fromARGB(255, 52, 58, 64),
          title: Text(
            "Home",
            style: TextStyle(fontSize: 18.0),
          ),
          bottom: PreferredSize(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
              child: Column(
                children: [],
              ),
            ),
            preferredSize: Size.fromHeight(15),
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            color: Colors.grey[100],
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.black12),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Total Accumulated Job Applied",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 10, fontWeight: FontWeight.bold),
                            ),
                            Icon(Icons.business_center),
                          ],
                        ),
                      ),
                      Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.black12),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Job Applied Current Month",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 10, fontWeight: FontWeight.bold),
                            ),
                            Icon(Icons.event_available),
                          ],
                        ),
                      ),
                      Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.black12),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Job Applied Previous Month",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 10, fontWeight: FontWeight.bold),
                            ),
                            Icon(Icons.event_note),
                          ],
                        ),
                      ),
                      Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.black12),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Job Interested On You",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 10, fontWeight: FontWeight.bold),
                            ),
                            Icon(Icons.favorite),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
                      padding: EdgeInsets.all(5),
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.black12),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Job Applied",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(20, 0, 20, 20),
                          padding: EdgeInsets.all(5),
                          height: 300,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border(
                              bottom: BorderSide(color: Colors.black12),
                              left: BorderSide(color: Colors.black12),
                              right: BorderSide(color: Colors.black12),
                            ),
                          ),
                          child: Column(
                            children: [
                              Flexible(
                                  child: ListView.builder(
                                shrinkWrap: true,
                                primary: false,
                                itemCount: 10,
                                itemBuilder: (context, index) =>
                                    buildJobApplied(),
                              )),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
                      padding: EdgeInsets.all(5),
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.black12),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Interview Invitation",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.fromLTRB(20, 0, 20, 20),
                        padding: EdgeInsets.all(10),
                        height: 300,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border(
                                bottom: BorderSide(color: Colors.black12),
                                left: BorderSide(color: Colors.black12),
                                right: BorderSide(color: Colors.black12))),
                        child: Column(
                          children: [
                            Flexible(
                              child: ListView.builder(
                                shrinkWrap: true,
                                primary: false,
                                itemCount: 5,
                                itemBuilder: (context, index) => Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Invitation links here",
                                      // textAlign: TextAlign.center,
                                    ),
                                    TextButton(
                                        onPressed: () {
                                          Navigator.of(context).pushReplacement(
                                              MaterialPageRoute(
                                                  builder: (ctx) =>
                                                      Interview()));
                                        },
                                        child: Text('Test link'))
                                  ],
                                ),
                              ),
                            ),
                          ],
                        )),
                  ],
                ),
              ],
            ),
          ),
        ));
  }

  bool homeColor = true;
  bool profileColor = false;
  bool jobprogressColor = false;
  bool jobsColor = false;
  bool settingColor = false;

  Widget _buildMyDrawer() {
    return Drawer(
      child: Container(
        color: Color.fromARGB(255, 52, 58, 64),
        child: ListView(
          children: <Widget>[
            // _buildUserAccountsDrawerHeader(),
            Container(
                padding: EdgeInsets.symmetric(vertical: 40),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage("images/Emma.jpg"),
                    ),
                    SizedBox(width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Pingggggzi",
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                        SizedBox(height: 4),
                        Text(
                          "gutenachrichten1015@gmail.com",
                          style: TextStyle(fontSize: 14, color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                )),
            ListTile(
              selected: homeColor,
              onTap: () {
                setState(() {
                  homeColor = true;
                  profileColor = false;
                  jobprogressColor = false;
                  jobsColor = false;
                  settingColor = false;
                });
              },
              leading: Icon(
                Icons.home,
                color: Colors.white,
              ),
              title: Text(
                "Home",
                style: TextStyle(color: Colors.white),
              ),
            ),
            ListTile(
              selected: profileColor,
              onTap: () {
                setState(() {
                  homeColor = true;
                  profileColor = false;
                  jobprogressColor = false;
                  jobsColor = false;
                  settingColor = false;
                });
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (ctx) => Profile()));
              },
              leading: Icon(Icons.person),
              title: Text("Profile"),
            ),
            ListTile(
              selected: jobprogressColor,
              onTap: () {
                setState(() {
                  homeColor = true;
                  profileColor = false;
                  jobprogressColor = false;
                  jobsColor = false;
                  settingColor = false;
                });
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (ctx) => Jobprogress()));
              },
              leading: Icon(Icons.pending_actions),
              title: Text("Job Progress/ interview tem"),
            ),
            ListTile(
              selected: jobsColor,
              onTap: () {
                setState(() {
                  homeColor = true;
                  profileColor = false;
                  jobprogressColor = false;
                  jobsColor = false;
                  settingColor = false;
                });
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (ctx) => Jobs()));
              },
              leading: Icon(Icons.work),
              title: Text("Jobs"),
            ),
            ListTile(
              selected: settingColor,
              onTap: () {
                setState(() {
                  homeColor = true;
                  profileColor = false;
                  jobprogressColor = false;
                  jobsColor = false;
                  settingColor = false;
                });
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (ctx) => Setting()));
              },
              leading: Icon(Icons.settings),
              title: Text("Setting"),
            ),
            ListTile(
              onTap: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (ctx) => Dashboard()));
              },
              leading: Icon(Icons.exit_to_app),
              title: Text("Logout"),
            ),
          ],
        ),
      ),
    );
  }

  //   Widget _buildUserAccountsDrawerHeader() {
  //   List<UserModel> userModel = userProvider.userModelList;
  //   return Column(
  //       children: userModel.map((e) {
  //     return UserAccountsDrawerHeader(
  //       accountName: Text(
  //         e.userName,
  //         style: TextStyle(color: Colors.black),
  //       ),
  //       currentAccountPicture: CircleAvatar(
  //         backgroundColor: Colors.white,
  //         backgroundImage: e.userImage == null
  //             ? AssetImage("images/userImage.png")
  //             : NetworkImage(e.userImage),
  //       ),
  //       decoration: BoxDecoration(color: Color(0xfff2f2f2)),
  //       accountEmail: Text(e.userEmail, style: TextStyle(color: Colors.black)),
  //     );
  //   }).toList());
  // }

  RoundedIconButton(
      {required IconData iconData, required Null Function() press}) {}
}

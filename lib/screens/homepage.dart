import 'package:flutter/material.dart';
import 'package:test_project_emotion/screens/jobprogress.dart';
import 'package:test_project_emotion/screens/jobs.dart';
import 'package:test_project_emotion/screens/login.dart';
import 'package:test_project_emotion/screens/profile.dart';
import 'package:test_project_emotion/screens/setting.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: _buildMyDrawer(),
        appBar: AppBar(
          leading: RoundedIconButton(
              iconData: Icons.menu,
              press: () {
                Scaffold.of(context).openDrawer();
              }),
          backgroundColor: Colors.black,
          title: Text(
            "Dashboard",
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
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    color: Colors.grey,
                    height: 80,
                    width: 80,
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
                    color: Colors.grey,
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
                    color: Colors.grey,
                    height: 80,
                    width: 80,
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
                    color: Colors.grey,
                    height: 80,
                    width: 80,
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
                  height: 20,
                  color: Colors.grey[600],
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Job Applied",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                // Expanded(
                // height: 180,
                // child:
                ListView(
                  shrinkWrap: true,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(20, 0, 20, 20),
                      height: 180,
                      color: Colors.grey,
                      child: Row(
                        children: [
                          Text("No jobs applied..."),
                        ],
                      ),
                    ),
                  ],
                ),
                // ),
              ],
            ),
            Column(
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
                  height: 20,
                  color: Colors.grey[600],
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Interview Invitation",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                // Expanded(
                // height: 180,
                // child:
                ListView(
                  shrinkWrap: true,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(20, 0, 20, 20),
                      height: 180,
                      color: Colors.grey,
                      child: Row(
                        children: [
                          Text("Invation links here"),
                        ],
                      ),
                    ),
                  ],
                ),
                // ),
              ],
            ),
          ],
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
        color: Colors.grey,
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
              title: Text("Job Progress"),
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
                    MaterialPageRoute(builder: (ctx) => Login()));
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

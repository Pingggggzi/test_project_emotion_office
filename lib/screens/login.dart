// import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:test_project_emotion/screens/dashboard.dart';
import 'package:test_project_emotion/screens/employerLogin.dart';
import 'package:test_project_emotion/screens/employerSignUp.dart';
import 'package:test_project_emotion/screens/signup.dart';
import 'package:test_project_emotion/widgets/changescreen.dart';
import 'package:test_project_emotion/widgets/mytextformField.dart';
import 'package:test_project_emotion/widgets/passwordtextformField.dart';
import '../widgets/mybutton.dart';
import 'homepage.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' show json;

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

GlobalKey<FormState> _formKey = GlobalKey<FormState>();
bool isLoading = false;
String p =
    r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';

RegExp regExp = new RegExp(p);
final TextEditingController email = TextEditingController();
final TextEditingController userName = TextEditingController();
final TextEditingController password = TextEditingController();
final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

bool obserText = true;

class _LoginState extends State<Login> {
  Future login() async {
    var url = Uri.parse('http://10.113.64.27/login.php');
    var response = await http.post(url, body: {
      "username": email.text,
      "password": password.text,
    });
    var data = json.decode(response.body);
    if (data == "Success") {
      Fluttertoast.showToast(
          msg: "Login Successfully!",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.green,
          textColor: Colors.white,
          fontSize: 16.0);
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (ctx) => HomePage()));
    } else {
      Fluttertoast.showToast(
          msg: "Login info incorrect!",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0);
    }
  }

  void submit(context) async {
    try {
      setState(() {
        isLoading = true;
      });
      // UserCredential result = await FirebaseAuth.instance
      // .signInWithEmailAndPassword(
      //     email: email.text, password: password.text);
      // print(result);
    } on PlatformException catch (error) {
      var message = "Please Check Your Internet Connection ";
      if (error.message != null) {
        message = error.message!;
      }
      _scaffoldKey.currentState!.showSnackBar(
        SnackBar(
          content: Text(message.toString()),
          duration: Duration(milliseconds: 800),
          backgroundColor: Theme.of(context).primaryColor,
        ),
      );
      setState(() {
        isLoading = false;
      });
    } catch (error) {
      setState(() {
        isLoading = false;
      });
      _scaffoldKey.currentState!.showSnackBar(SnackBar(
        content: Text(error.toString()),
        duration: Duration(milliseconds: 800),
        backgroundColor: Theme.of(context).primaryColor,
      ));
    }

    setState(() {
      isLoading = false;
    });
  }

  void vaildation() async {
    if (email.text.isEmpty && password.text.isEmpty) {
      _scaffoldKey.currentState!.showSnackBar(
        SnackBar(
          content: Text("Both Flied Are Empty"),
        ),
      );
    } else if (email.text.isEmpty) {
      _scaffoldKey.currentState!.showSnackBar(
        SnackBar(
          content: Text("Email Is Empty"),
        ),
      );
    } else if (!regExp.hasMatch(email.text)) {
      _scaffoldKey.currentState!.showSnackBar(
        SnackBar(
          content: Text("Please Try Vaild Email"),
        ),
      );
    } else if (password.text.isEmpty) {
      _scaffoldKey.currentState!.showSnackBar(
        SnackBar(
          content: Text("Password Is Empty"),
        ),
      );
    } else if (password.text.length < 8) {
      _scaffoldKey.currentState!.showSnackBar(
        SnackBar(
          content: Text("Password  Is Too Short"),
        ),
      );
    } else {
      submit(context);
    }
  }

  Widget _buildAllPart() {
    return Expanded(
      flex: 3,
      child: Container(
        width: double.infinity,
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.of(context).pushReplacement(
                            MaterialPageRoute(builder: (ctx) => Dashboard()));
                      },
                      icon: Icon(Icons.arrow_back)),
                ],
              ),
            ),
            SizedBox(
              height: 200,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: <Widget>[
                    Text(
                      "Login",
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    MyTextFormField(
                      name: "Email",
                      controller: email,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    PasswordTextFormField(
                      obserText: obserText,
                      name: "Password",
                      controller: password,
                      onTap: () {
                        FocusScope.of(context).unfocus();
                        setState(() {
                          obserText = !obserText;
                        });
                      },
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    isLoading == false
                        ? MyButton(
                            onPressed: () {
                              vaildation();
                              // login();
                              Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(
                                      builder: (ctx) => HomePage()));
                            },
                            name: "Login",
                          )
                        : Center(
                            child: CircularProgressIndicator(),
                          ),
                    SizedBox(
                      height: 10,
                    ),
                    ChangeScreen(
                        name: "SignUp",
                        whichAccount: "No Account?",
                        onTap: () {
                          showDialog(
                              context: context,
                              builder: (context) => AlertDialog(
                                    title: Text('Confirmation'),
                                    content: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
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
                          // Navigator.of(context).pushReplacement(
                          //   MaterialPageRoute(
                          //     builder: (ctx) => SignUp(),
                          //   ),
                          // );
                        }),
                  ],
                ),
                SizedBox(
                  height: 200,
                ),
                Column(
                  children: [
                    TextButton(
                        onPressed: () {
                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(
                              builder: (ctx) => EmployerLogin(),
                            ),
                          );
                        },
                        child: Text(
                          'I Am Employer',
                          style: TextStyle(fontSize: 18),
                        ))
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: Form(
        key: _formKey,
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('images/loginBackground1.jpg'),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                      Colors.white.withOpacity(0.2), BlendMode.lighten))),
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                _buildAllPart(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

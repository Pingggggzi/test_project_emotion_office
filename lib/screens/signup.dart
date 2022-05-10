import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:test_project_emotion/screens/homepage.dart';
import 'package:test_project_emotion/screens/login.dart';
import 'package:test_project_emotion/widgets/changescreen.dart';
import 'package:test_project_emotion/widgets/mybutton.dart';
import 'package:test_project_emotion/widgets/mytextformField.dart';
import 'package:test_project_emotion/widgets/passwordtextformField.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' show json;

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
String p =
    r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';

RegExp regExp = new RegExp(p);
bool obserText = true;
final TextEditingController email = TextEditingController();
final TextEditingController password = TextEditingController();
final TextEditingController confirmationPassword = TextEditingController();
final TextEditingController firstName = TextEditingController();
final TextEditingController lastName = TextEditingController();
final TextEditingController role = TextEditingController();

bool isLoading = false;

class _SignUpState extends State<SignUp> {
  String? valueChoose;
  List listItem = ['Candidate', 'Employer'];

  Future register() async {
    var url = Uri.parse('http://10.113.64.27/register.php');
    var response = await http.post(url, body: {
      "username": email.text,
      "password": password.text,
    });

    var data = json.decode(response.body);
    if (data == "Error") {
      Fluttertoast.showToast(
          msg: "This user alrealy exit!",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0);
    } else {
      Fluttertoast.showToast(
          msg: "Registration Succesfully!",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.green,
          textColor: Colors.white,
          fontSize: 16.0);
    }
  }

  void submit() async {
//   //   UserCredential result;
    try {
      setState(() {
        isLoading = true;
      });
//   //     result = await FirebaseAuth.instance.createUserWithEmailAndPassword(
//   //         email: email.text, password: password.text);
//   //     print(result);
//   //     FirebaseFirestore.instance.collection("User").doc(result.user!.uid).set({
//   //   "UserEmail": email.text,
//   //   "ConfirmationPassword": confirmationPassword.text,
//   //   "FirstName": firstName.text,
//   //   "lastName": lastName.text,
//   //   "UserId": result.user!.uid,
//   //   "Role": isCandidate == true ? "Candidate" : "Employer",
//   // });
    } on PlatformException catch (error) {
      var message = "Please Check Your Internet Connection ";
      if (error.message != null) {
        message = error.message!;
      }
      _scaffoldKey.currentState!.showSnackBar(SnackBar(
        content: Text(message.toString()),
        duration: Duration(milliseconds: 600),
        backgroundColor: Theme.of(context).primaryColor,
      ));
      setState(() {
        isLoading = false;
      });
    } catch (error) {
      setState(() {
        isLoading = false;
      });
      _scaffoldKey.currentState!.showSnackBar(SnackBar(
        content: Text(error.toString()),
        duration: Duration(milliseconds: 600),
        backgroundColor: Theme.of(context).primaryColor,
      ));

      print(error);
    }
//     result = await FirebaseAuth.instance.createUserWithEmailAndPassword(
//     email: email.text, password: password.text);
//     FirebaseFirestore.instance.collection("User").doc(result.user.uid).set({
//       "UserEmail": email.text,
    // "ConfirmationPassword": confirmationPassword.text,
//       "FirstName": firstName.text,
    // "LastName":lastName.text,
    // "Role": isCandidate == true ? "Candidate" : "Employer",
//       "UserId": result.user.uid,
//     });
    Navigator.of(context)
        .pushReplacement(MaterialPageRoute(builder: (ctx) => HomePage()));
    setState(() {
      isLoading = false;
    });
  }

  void vaildation() async {
    if (email.text.isEmpty &&
        password.text.isEmpty &&
        confirmationPassword.text.isEmpty &&
        firstName.text.isEmpty &&
        lastName.text.isEmpty) {
      _scaffoldKey.currentState!.showSnackBar(
        SnackBar(
          content: Text("All flied are empty"),
        ),
      );
    } else if (email.text.isEmpty) {
      _scaffoldKey.currentState!.showSnackBar(
        SnackBar(
          content: Text("Email is empty"),
        ),
      );
    } else if (!regExp.hasMatch(email.text)) {
      _scaffoldKey.currentState!.showSnackBar(
        SnackBar(
          content: Text("Please try vaild email"),
        ),
      );
    } else if (password.text.isEmpty) {
      _scaffoldKey.currentState!.showSnackBar(
        SnackBar(
          content: Text("Password is empty"),
        ),
      );
    } else if (password.text.length < 8) {
      _scaffoldKey.currentState!.showSnackBar(
        SnackBar(
          content: Text("Password  is too short"),
        ),
      );
    } else if (confirmationPassword.text.isEmpty) {
      _scaffoldKey.currentState!.showSnackBar(
        SnackBar(
          content: Text("Confirmation password is empty"),
        ),
      );
    } else if (confirmationPassword.value != password.value) {
      _scaffoldKey.currentState!.showSnackBar(
        SnackBar(
          content: Text("The password confirmation does not match"),
        ),
      );
    } else if (firstName.text.isEmpty) {
      _scaffoldKey.currentState!.showSnackBar(
        SnackBar(
          content: Text("First name is empty"),
        ),
      );
    } else if (lastName.text.isEmpty) {
      _scaffoldKey.currentState!.showSnackBar(
        SnackBar(
          content: Text("Last Name is empty "),
        ),
      );
    } else {
      submit();
    }
  }

  Widget _buildAllTextFormField() {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          MyTextFormField(
            name: "Email",
            controller: email,
          ),
          SizedBox(
            height: 10,
          ),
          PasswordTextFormField(
            obserText: obserText,
            controller: password,
            name: "Password",
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
          PasswordTextFormField(
            obserText: obserText,
            controller: confirmationPassword,
            name: "Confirmation Password",
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
          MyTextFormField(
            name: "First Name",
            controller: firstName,
          ),
          SizedBox(
            height: 10,
          ),
          MyTextFormField(
            name: "Last Name",
            controller: lastName,
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(0.0),
            child: Container(
              height: 60,
              padding: EdgeInsets.only(left: 10),
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(5),
              ),
              child: DropdownButton(
                hint: Text("Role"),
                isExpanded: true,
                underline: SizedBox(),
                style: TextStyle(color: Colors.black87, fontSize: 18),
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
          ),
        ],
      ),
    );
  }

  Widget _buildBottomPart() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          _buildAllTextFormField(),
          SizedBox(
            height: 10,
          ),
          isLoading == false
              ? MyButton(
                  name: "SignUp",
                  onPressed: () {
                    register();
                    vaildation();
                  },
                )
              : Center(
                  child: CircularProgressIndicator(),
                ),
          ChangeScreen(
            name: "Login",
            whichAccount: "Register Already?",
            onTap: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: ListView(
        children: [
          Container(
            height: 150,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Register",
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 500,
            child: _buildBottomPart(),
          ),
        ],
      ),
    );
  }
}

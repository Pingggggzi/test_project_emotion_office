import 'dart:io';

import 'package:chewie/chewie.dart';
import 'package:cnic_scanner/model/cnic_model.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:test_project_emotion/screens/employerSetting.dart';
import 'package:test_project_emotion/widgets/mytextformField.dart';
import 'package:video_player/video_player.dart';
import 'package:cnic_scanner/cnic_scanner.dart';

class CompanyVerification extends StatefulWidget {
  @override
  State<CompanyVerification> createState() => _CompanyVerificationState();
}

class _CompanyVerificationState extends State<CompanyVerification> {
  int currentStep = 0;
  final TextEditingController companyName = TextEditingController();
  final TextEditingController companyAddress = TextEditingController();

  CnicModel _cnicModel = CnicModel();
  Future<void> scanCnic(ImageSource imageSource) async {
    /// you will need to pass one argument of "ImageSource" as shown here
    CnicModel cnicModel =
        await CnicScanner().scanImage(imageSource: imageSource);
    if (cnicModel == null) return;
    setState(() {
      _cnicModel = cnicModel;
      // nameTEController.text = _cnicModel.cnicHolderName;
      // cnicTEController.text = _cnicModel.cnicNumber;
      // dobTEController.text = _cnicModel.cnicHolderDateOfBirth;
      // doiTEController.text = _cnicModel.cnicIssueDate;
      // doeTEController.text = _cnicModel.cnicExpiryDate;
    });
  }

  File? imageFrontID;
  File? imageBackID;
  File? imageSelfie;
  Future pickFrontID(ImageSource source) async {
    final imageFrontID = await ImagePicker().pickImage(source: source);

    if (imageFrontID == null) return;

    final imageFrontIDTemporary = File(imageFrontID.path);

    setState(() {
      this.imageFrontID = imageFrontIDTemporary;
    });
  }

  Future pickBackID(ImageSource source) async {
    final imageBackID = await ImagePicker().pickImage(source: source);

    if (imageBackID == null) return;

    final imageBackIDTemporary = File(imageBackID.path);
    setState(() {
      this.imageBackID = imageBackIDTemporary;
    });
  }

  Future pickSelfie(ImageSource source) async {
    final imageSelfie = await ImagePicker().pickImage(source: source);

    if (imageSelfie == null) return;

    final imageSelfieTemporary = File(imageSelfie.path);
    setState(() {
      this.imageSelfie = imageSelfieTemporary;
    });
  }

  PickedFile? _videoFile;
  final ImagePicker _picker = ImagePicker();
  _record(ImageSource source) async {
    final pickedFile = await _picker.getVideo(source: source);

    if (pickedFile != null) {
      setState(() {
        _videoFile = pickedFile;
      });
    }
  }

  Widget bottomSheet1() {
    return Container(
      height: 100,
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 20,
      ),
      child: Column(
        children: [
          Text(
            'Choose To Take / Uplod Image',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FlatButton.icon(
                onPressed: () {
                  pickFrontID(ImageSource.gallery);
                  // pickBackID(ImageSource.gallery);
                },
                icon: Icon(Icons.image),
                label: Text('Gallery'),
              ),
              FlatButton.icon(
                onPressed: () {
                  pickFrontID(ImageSource.camera);
                  // pickBackID(ImageSource.camera);
                },
                icon: Icon(Icons.camera_alt),
                label: Text('Camera'),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget bottomSheet2() {
    return Container(
      height: 100,
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 20,
      ),
      child: Column(
        children: [
          Text(
            'Choose To Take / Uplod Image',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FlatButton.icon(
                onPressed: () {
                  pickBackID(ImageSource.gallery);
                },
                icon: Icon(Icons.image),
                label: Text('Gallery'),
              ),
              FlatButton.icon(
                onPressed: () {
                  pickBackID(ImageSource.camera);
                },
                icon: Icon(Icons.camera_alt),
                label: Text('Camera'),
              ),
            ],
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
                  MaterialPageRoute(builder: (ctx) => EmployerSetting()));
            }),
        title: Text("Company Verification"),
        backgroundColor: Color.fromARGB(255, 52, 58, 64),
      ),
      body: ListView(
        shrinkWrap: true,
        children: [
          Theme(
            data: Theme.of(context).copyWith(
                colorScheme: const ColorScheme.light(
                    primary: Color.fromARGB(255, 23, 162, 184))),
            child: Stepper(
                physics: ClampingScrollPhysics(),
                currentStep: currentStep,
                onStepTapped: (index) {
                  setState(() {
                    currentStep = index;
                  });
                },
                onStepContinue: () {
                  if (currentStep != 3) {
                    setState(() {
                      currentStep++;
                    });
                  }
                },
                onStepCancel: () {
                  if (currentStep != 0) {
                    setState(() {
                      currentStep--;
                    });
                  }
                },
                steps: [
                  Step(
                      isActive: currentStep >= 0,
                      title: Text(
                        'NRIC Scanning',
                        style: TextStyle(fontSize: 16),
                      ),
                      content: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Front Identity Card',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            height: 200,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                color: Colors.grey,
                                border: Border.all(
                                    color: Color.fromARGB(255, 219, 213, 213),
                                    width: 5.0)),
                            child: imageFrontID != null
                                ? Image.file(
                                    imageFrontID!,
                                    fit: BoxFit.cover,
                                  )
                                : IconButton(
                                    icon: Icon(
                                      Icons.add_a_photo,
                                      size: 30,
                                      color: Color.fromARGB(255, 23, 162, 184),
                                    ),
                                    onPressed: () {
                                      showModalBottomSheet(
                                          context: context,
                                          builder: ((builder) =>
                                              bottomSheet1()));
                                    },
                                  ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Back Identity Card',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            height: 200,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                color: Colors.grey,
                                border: Border.all(
                                    color: Color.fromARGB(255, 219, 213, 213),
                                    width: 5.0)),
                            child: imageBackID != null
                                ? Image.file(
                                    imageBackID!,
                                    fit: BoxFit.cover,
                                  )
                                : IconButton(
                                    icon: Icon(
                                      Icons.add_a_photo,
                                      size: 30,
                                      color: Color.fromARGB(255, 23, 162, 184),
                                    ),
                                    onPressed: () {
                                      showModalBottomSheet(
                                          context: context,
                                          builder: ((builder) =>
                                              bottomSheet2()));
                                    },
                                  ),
                          ),
                        ],
                      )),
                  Step(
                      isActive: currentStep >= 1,
                      title: Text(
                        'Facial Recognition & Video Recording',
                        style: TextStyle(fontSize: 16),
                      ),
                      content: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Video Recording Section',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            height: 200,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.black12)),
                            child: _videoFile == null
                                ? Icon(
                                    Icons.videocam,
                                    size: 30,
                                    color: Color.fromARGB(255, 23, 162, 184),
                                  )
                                : FittedBox(
                                    fit: BoxFit.contain,
                                    child: mounted
                                        ? Chewie(
                                            controller: ChewieController(
                                              videoPlayerController:
                                                  VideoPlayerController.file(
                                                      File(_videoFile!.path)),
                                              aspectRatio: 3 / 2,
                                              autoPlay: true,
                                              looping: true,
                                            ),
                                          )
                                        : Container(),
                                  ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          ElevatedButton(
                              onPressed: () {
                                _record(ImageSource.camera);
                              },
                              child: Text('Start Recording')),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Snapshot Selfie Section',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            height: 200,
                            width: double.infinity,
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.black12)),
                            child: imageSelfie != null
                                ? Image.file(
                                    imageSelfie!,
                                    fit: BoxFit.cover,
                                  )
                                : Icon(Icons.camera_alt,
                                    size: 30,
                                    color: Color.fromARGB(255, 23, 162, 184)),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          ElevatedButton(
                              onPressed: () {
                                pickSelfie(ImageSource.camera);
                              },
                              child: Text('Take Selfie')),
                        ],
                      )),
                  Step(
                      isActive: currentStep >= 2,
                      title: Text(
                        'Company Documents',
                        style: TextStyle(fontSize: 16),
                      ),
                      content: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Company Name',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          MyTextFormField(
                              controller: companyName,
                              name: 'Enter Company Name'),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Company Address',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          MyTextFormField(
                              controller: companyAddress,
                              name: 'Enter Company Address')
                        ],
                      )),
                  Step(
                      isActive: currentStep >= 3,
                      title: Text(
                        'Finish',
                        style: TextStyle(fontSize: 16),
                      ),
                      content: Container(
                        child: Text(
                          'Thank you for your time to verify !',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      )),
                ]),
          )
        ],
      ),
    );
  }
}

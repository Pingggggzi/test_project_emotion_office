import 'dart:io';
import 'package:permission_handler/permission_handler.dart';
import 'package:camera/camera.dart';
import 'package:chewie/chewie.dart';
import 'package:cnic_scanner/model/cnic_model.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_ml_kit/google_ml_kit.dart';
import 'package:image_picker/image_picker.dart';
import 'package:test_project_emotion/screens/employerSetting.dart';
import 'package:test_project_emotion/widgets/mytextformField.dart';
import 'package:video_player/video_player.dart';
import 'package:cnic_scanner/cnic_scanner.dart';

// var cameras;

class CompanyVerification extends StatefulWidget {
  // const CompanyVerification(
  // {Key? key,
  // required this.customPaint,
  // required this.onImage,
  // required this.initialDirection})
  // : super(key: key);
  // final CustomPaint customPaint;
  // final Function(InputImage inputImage) onImage;
  // final CameraLensDirection initialDirection;
  @override
  State<CompanyVerification> createState() => _CompanyVerificationState();
}

// enum ScreenMode { liveFeed, gallery }

class _CompanyVerificationState extends State<CompanyVerification> {
  int currentStep = 0;
  final TextEditingController companyName = TextEditingController();
  final TextEditingController companyAddress = TextEditingController();

  // FaceDetector faceDetector =
  //     GoogleMlKit.vision.faceDetector(FaceDetectorOptions(
  //   enableContours: true,
  //   enableClassification: true,
  // ));
  // bool isBusy = false;

  // void dispose() {
  //   faceDetector.close();
  //   _stopLiveFeed();
  //   super.dispose();
  // }

  // Future<void> processImage(InputImage inputImage) async {
  //   if (isBusy) return;
  //   isBusy = true;
  //   final faces = await faceDetector.processImage(inputImage);
  //   if (faces.length > 0 && faces[0].smilingProbability != null) {
  //     final double? smileProb = faces[0].smilingProbability;
  //     print(smileProb);
  //     isBusy = false;
  //     if (mounted) {
  //       setState(() {});
  //     }
  //   }
  // }

  // late CameraController? _controller;
  // int _cameraIndex = 0;
  // void initState() {
  //   super.initState();

  //   for (var i = 0; i < cameras.length; i++) {
  //     if (cameras[i].lensDirection == widget.initialDirection) {
  //       _cameraIndex = i;
  //     }
  //   }
  //   _startLiveFeed();
  // }

  // Future _startLiveFeed() async {
  //   final _cameras = cameras[_cameraIndex];
  //   _controller =
  //       CameraController(cameras, ResolutionPreset.low, enableAudio: false);
  //   _controller?.initialize().then((_) {
  //     if (!mounted) {
  //       return;
  //     }
  //     _controller?.startImageStream(_processCameraImage);
  //     setState(() {});
  //   });
  // }

  // Future _processCameraImage(CameraImage image) async {
  //   final WriteBuffer allBytes = WriteBuffer();
  //   for (Plane plane in image.planes) {
  //     allBytes.putUint8List(plane.bytes);
  //   }
  //   final bytes = allBytes.done().buffer.asUint8List();

  //   final Size imageSize =
  //       Size(image.width.toDouble(), image.height.toDouble());

  //   final _cameras = cameras[_cameraIndex];
  //   final imageRotation =
  //       InputImageRotationMethods.fromRawValue(cameras.sensorOrientation) ??
  //           InputImageRotation.Rotation_0deg;

  //   final inputImageFormat =
  //       InputImageFormatMethods.fromRawValue(image.format.raw) ??
  //           InputImageFormat.NV21;

  //   final planeData = image.planes.map(
  //     (Plane plane) {
  //       return InputImagePlaneMetadata(
  //         bytesPerRow: plane.bytesPerRow,
  //         height: plane.height,
  //         width: plane.width,
  //       );
  //     },
  //   ).toList();
  //   final inputImageData = InputImageData(
  //       size: imageSize,
  //       imageRotation: imageRotation,
  //       inputImageFormat: inputImageFormat,
  //       planeData: planeData);

  //   final inputImage =
  //       InputImage.fromBytes(bytes: bytes, inputImageData: inputImageData);
  //   widget.onImage(inputImage);
  // }

  // Future _stopLiveFeed() async {
  //   await _controller?.stopImageStream();
  //   await _controller?.dispose();
  //   _controller = null;
  // }

  // Widget _liveFeedBody() {
  //   if (_controller?.value.isInitialized == false) {
  //     return Container(
  //       height: 200,
  //       width: double.infinity,
  //       decoration: BoxDecoration(border: Border.all(color: Colors.black12)),
  //       child: Icon(
  //         Icons.videocam,
  //         size: 30,
  //         color: Color.fromARGB(255, 23, 162, 184),
  //       ),
  //     );
  //   }
  //   return Container(
  //     height: 200,
  //     width: double.infinity,
  //     decoration: BoxDecoration(border: Border.all(color: Colors.black12)),
  //     child: Stack(
  //       fit: StackFit.expand,
  //       children: [
  //         CameraPreview(_controller!),
  //         if (widget.customPaint != null) widget.customPaint,
  //       ],
  //     ),
  //     // child: _videoFile == null
  //     //     ? Icon(
  //     //         Icons.videocam,
  //     //         size: 30,
  //     //         color: Color.fromARGB(255, 23, 162, 184),
  //     //       )
  //     //     : FittedBox(
  //     //         fit: BoxFit.contain,
  //     //         child: mounted
  //     //             ? Chewie(
  //     //                 controller: ChewieController(
  //     //                   videoPlayerController:
  //     //                       VideoPlayerController.file(File(_videoFile!.path)),
  //     //                   aspectRatio: 3 / 2,
  //     //                   autoPlay: true,
  //     //                   looping: true,
  //     //                 ),
  //     //               )
  //     //             : Container(),
  //     //       ),
  //   );
  // }

  // CnicModel _cnicModel = CnicModel();
  // Future<void> scanCnic(ImageSource imageSource) async {
  //   /// you will need to pass one argument of "ImageSource" as shown here
  //   CnicModel cnicModel =
  //       await CnicScanner().scanImage(imageSource: imageSource);
  //   if (cnicModel == null) return;
  //   setState(() {
  //     _cnicModel = cnicModel;
  //   });
  // }

  File? imageFrontID;
  File? imageBackID;
  File? imageSelfie;
  CnicModel _pickFrontID = CnicModel();
  CnicModel _pickBackID = CnicModel();
  Future pickFrontID(ImageSource source) async {
    // final imageFrontID = await ImagePicker().pickImage(source: source);
    CnicModel imageFrontID = await CnicScanner().scanImage(imageSource: source);

    if (imageFrontID == null) return;

    // final imageFrontIDTemporary = File(imageFrontID.path);

    setState(() {
      _pickFrontID = imageFrontID;
    });
  }

  Future pickBackID(ImageSource source) async {
    // final imageBackID = await ImagePicker().pickImage(source: source);
    CnicModel imageBackID = await CnicScanner().scanImage(imageSource: source);
    if (imageBackID == null) return;

    // final imageBackIDTemporary = File(imageBackID.path);
    setState(() {
      // this.imageBackID = imageBackIDTemporary;
      _pickBackID = imageBackID;
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
                  // onGalleryBTNPressed:
                  // () {
                  //   scanCnic(ImageSource.gallery);
                  // };
                  pickFrontID(ImageSource.gallery);
                },
                icon: Icon(Icons.image),
                label: Text('Gallery'),
              ),
              FlatButton.icon(
                onPressed: () {
                  // OnCameraBTNPressed:
                  // () {
                  //   scanCnic(ImageSource.camera);
                  // };
                  pickFrontID(ImageSource.camera);
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
                            // child: _liveFeedBody(),
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

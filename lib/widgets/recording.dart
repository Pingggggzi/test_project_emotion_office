// import 'package:flutter/material.dart';
// import 'dart:io';
// import 'package:image_picker/image_picker.dart';
// import 'package:chewie/chewie.dart';
// import 'package:test_project_emotion/screens/homepage.dart';
// import 'package:video_player/video_player.dart';

// class Recording extends StatefulWidget {
//   @override
//   State<Recording> createState() => _RecordingState();
// }

// class _RecordingState extends State<Recording> {
//   PickedFile? _imageFile;
//   PickedFile? _videoFile;
//   final ImagePicker _picker = ImagePicker();

//   _camera(ImageSource sourse) async {
//     final pickedFile = await _picker.getImage(
//       source: sourse,
//     );

//     if (pickedFile != null) {
//       setState(() {
//         _imageFile = pickedFile;
//       });
//     }
//   }

//   _picture(ImageSource source) async {
//     final pickedFile = await _picker.getImage(
//       source: source,
//     );

//     if (pickedFile != null) {
//       setState(() {
//         _imageFile = pickedFile;
//       });
//     }
//   }

//   _videoPic(ImageSource source) async {
//     final pickedFile = await _picker.getVideo(source: source);

//     if (pickedFile != null) {
//       setState(() {
//         _videoFile = pickedFile;
//         print("set");
//       });
//     }
//   }

//   _record(ImageSource source) async {
//     final pickedFile = await _picker.getVideo(source: source);

//     if (pickedFile != null) {
//       setState(() {
//         _videoFile = pickedFile;
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         leading: IconButton(
//             icon: Icon(Icons.arrow_back_ios_new),
//             onPressed: () {
//               Navigator.of(context).pushReplacement(
//                   MaterialPageRoute(builder: (ctx) => HomePage()));
//             }),
//         title: Text("Interview tem"),
//         backgroundColor: Color.fromARGB(255, 52, 58, 64),
//       ),
//       body: Center(
//         child: ListView(
//           children: [
//             Column(
//               children: [
//                 //video
//                 Container(
//                   color: Colors.black,
//                   margin: EdgeInsets.all(20),
//                   height: MediaQuery.of(context).size.height * (30 / 100),
//                   width: MediaQuery.of(context).size.width * (100 / 100),
//                   child: _videoFile == null
//                       ? Center(
//                           child: IconButton(
//                           icon: Icon(
//                             Icons.videocam,
//                             color: Colors.blueAccent,
//                             size: 50,
//                           ),
//                           onPressed: () {
//                             showModalBottomSheet(
//                               context: context,
//                               builder: ((builder) => bottomSheet2()),
//                             );
//                           },
//                         ))
//                       : FittedBox(
//                           fit: BoxFit.contain,
//                           child: mounted
//                               ? Chewie(
//                                   controller: ChewieController(
//                                     videoPlayerController:
//                                         VideoPlayerController.file(
//                                             File(_videoFile!.path)),
//                                     aspectRatio: 3 / 2,
//                                     autoPlay: true,
//                                     looping: true,
//                                   ),
//                                 )
//                               : Container(),
//                         ),
//                 ),
//                 Container(
//                   color: Colors.black,
//                   margin: EdgeInsets.all(20),
//                   height: MediaQuery.of(context).size.height * (30 / 100),
//                   width: MediaQuery.of(context).size.width * (100 / 100),
//                   child: FittedBox(
//                     fit: BoxFit.contain,
//                     child: _imageFile == null
//                         ? Center(
//                             child: Icon(
//                               Icons.video_library,
//                               size: 10,
//                               color: Colors.blueAccent,
//                             ),
//                           )
//                         : Image.file(File(_imageFile!.path)),
//                   ),
//                 ),
//                 RaisedButton(
//                   child: Row(
//                     mainAxisSize: MainAxisSize.min,
//                     children: [
//                       Text('Camera'),
//                       Icon(Icons.camera),
//                     ],
//                   ),
//                   onPressed: () {
//                     _camera(ImageSource.camera);
//                   },
//                 ),
//                 RaisedButton(
//                   child: Row(
//                     mainAxisSize: MainAxisSize.min,
//                     children: [
//                       Text('Picture'),
//                       Icon(Icons.add_a_photo),
//                     ],
//                   ),
//                   onPressed: () {
//                     _picture(ImageSource.gallery);
//                   },
//                 ),
//                 RaisedButton(
//                   child: Row(
//                     mainAxisSize: MainAxisSize.min,
//                     children: [
//                       Text('Video'),
//                       Icon(Icons.video_library),
//                     ],
//                   ),
//                   onPressed: () {
//                     _videoPic(ImageSource.gallery);
//                   },
//                 ),
//                 RaisedButton(
//                   child: Row(
//                     mainAxisSize: MainAxisSize.min,
//                     children: [Text('Record'), Icon(Icons.videocam)],
//                   ),
//                   onPressed: () {
//                     _record(ImageSource.camera);
//                   },
//                 ),
//               ],
//             )
//           ],
//         ),
//       ),
//     );
//   }

//   Widget bottomSheet2() {
//     return Container(
//       height: 100,
//       width: MediaQuery.of(context).size.width,
//       margin: EdgeInsets.symmetric(
//         horizontal: 20,
//         vertical: 20,
//       ),
//       child: Column(
//         children: [
//           Text(
//             'Choose Profile Photo',
//             style: TextStyle(fontSize: 18),
//           ),
//           SizedBox(
//             height: 20,
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               FlatButton.icon(
//                 onPressed: () {
//                   _videoPic(ImageSource.gallery);
//                 },
//                 icon: Icon(Icons.video_library),
//                 label: Text('Gallery'),
//               ),
//               FlatButton.icon(
//                 onPressed: () {
//                   _record(ImageSource.camera);
//                 },
//                 icon: Icon(Icons.videocam),
//                 label: Text('Camera'),
//               ),
//             ],
//           )
//         ],
//       ),
//     );
//   }
// }

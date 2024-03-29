import 'package:flutter/material.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:chewie/chewie.dart';
import 'package:test_project_emotion/screens/homepage.dart';
import 'package:test_project_emotion/widgets/mybutton.dart';
import 'package:video_player/video_player.dart';
import 'package:flutter_vlc_player/flutter_vlc_player.dart';
import 'package:http/http.dart' as http;

class Interview extends StatefulWidget {
  @override
  State<Interview> createState() => _InterviewState();
}

class _InterviewState extends State<Interview> {
  PickedFile? _videoFile;
  final ImagePicker _picker = ImagePicker();
  bool _isPlaying = true;
  final VlcPlayerController _videoPlayerController = VlcPlayerController.asset(
    'assets/video.mp4',
    hwAcc: HwAcc.full,
    autoPlay: true,
    options: VlcPlayerOptions(),
  );

  // void dispose() async {
  //   super.dispose();
  //   await _videoPlayerController.stopRendererScanning();
  //   // await _videoViewController.dispose();
  // }

  _videoPic(ImageSource source) async {
    final pickedFile = await _picker.getVideo(source: source);

    if (pickedFile != null) {
      setState(() {
        _videoFile = pickedFile;
        print("set");
      });
    }
  }

  _record(ImageSource source) async {
    final pickedFile = await _picker.getVideo(source: source);

    if (pickedFile != null) {
      setState(() {
        _videoFile = pickedFile;
      });
    }
  }

  Future uploadVideo() async {
    final uri = Uri.parse("http://10.113.64.27/uploadVideo.php");
    final request = http.MultipartRequest('Post', uri);
    var capturedVideo =
        await http.MultipartFile.fromPath('Video', _videoFile!.path);
    request.files.add(capturedVideo);
    var response = await request.send();

    if (response.statusCode == 200) {
      print('Video Upload');
    } else {
      print('Video Not Upload');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(Icons.arrow_back_ios_new),
            onPressed: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (ctx) => HomePage()));
            }),
        title: Text("Interview"),
        backgroundColor: Color.fromARGB(255, 52, 58, 64),
      ),
      body: Center(
        child: ListView(
          children: [
            Column(
              children: [
                Column(
                  children: [
                    Container(
                      color: Colors.black,
                      margin: EdgeInsets.all(20),
                      height: MediaQuery.of(context).size.height * (30 / 100),
                      width: MediaQuery.of(context).size.width * (100 / 100),
                      child: VlcPlayer(
                        controller: _videoPlayerController,
                        aspectRatio: 16 / 9,
                        placeholder: Center(
                          child: CircularProgressIndicator(),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        TextButton(
                            onPressed: () {},
                            child: Icon(
                              Icons.fast_rewind,
                              color: Color.fromRGBO(50, 75, 205, 1),
                            )),
                        SizedBox(
                          width: 5,
                        ),
                        TextButton(
                            onPressed: () {
                              if (_isPlaying) {
                                setState(() {
                                  _isPlaying = false;
                                });
                                _videoPlayerController.pause();
                              } else {
                                setState(() {
                                  _isPlaying = true;
                                });
                                _videoPlayerController.play();
                              }
                            },
                            child: Icon(
                              Icons.play_arrow,
                              color: Color.fromRGBO(50, 75, 205, 1),
                            )),
                        SizedBox(
                          width: 5,
                        ),
                        TextButton(
                            onPressed: () {},
                            child: Icon(
                              Icons.fast_forward,
                              color: Color.fromRGBO(50, 75, 205, 1),
                            )),
                      ],
                    ),
                  ],
                ),
                Container(
                  color: Colors.black,
                  margin: EdgeInsets.all(20),
                  height: MediaQuery.of(context).size.height * (30 / 100),
                  width: MediaQuery.of(context).size.width * (100 / 100),
                  child: _videoFile == null
                      ? Center(
                          child: Icon(
                            Icons.videocam,
                            color: Color.fromRGBO(50, 75, 205, 1),
                            size: 50.0,
                          ),
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
                Container(
                    margin: EdgeInsets.all(20),
                    child: MyButton(
                        name: 'Click To Play / Record Videos',
                        onPressed: () {
                          showModalBottomSheet(
                            context: context,
                            builder: ((builder) => bottomSheet()),
                          );
                        })),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget bottomSheet() {
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
            'Choose To Play / Record Video',
            style: TextStyle(fontSize: 18),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FlatButton.icon(
                onPressed: () {
                  _videoPic(ImageSource.gallery);
                },
                icon: Icon(Icons.video_library),
                label: Text('Gallery'),
              ),
              FlatButton.icon(
                onPressed: () {
                  _record(ImageSource.camera);
                },
                icon: Icon(Icons.videocam),
                label: Text('Camera'),
              ),
            ],
          )
        ],
      ),
    );
  }
}

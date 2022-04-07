import 'package:flutter/material.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:chewie/chewie.dart';
import 'package:video_player/video_player.dart';

class Recording extends StatefulWidget {
  Recording({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<Recording> createState() => _RecordingState();
}

class _RecordingState extends State<Recording> {
  File? imageFile;
  File? videoFile;
  final ImagePicker _picker = ImagePicker();

  _camera() async {
    final XFile? theImage = await _picker.pickImage(
      source: ImageSource.camera,
    );

    if (theImage != null) {
      setState(() {
        imageFile = theImage as File;
      });
    }
  }

  _picture() async {
    final XFile? theImage = await _picker.pickImage(
      source: ImageSource.gallery,
    );

    if (theImage != null) {
      setState(() {
        imageFile = theImage as File;
      });
    }
  }

  _videoPic() async {
    final XFile? theVid = await _picker.pickVideo(source: ImageSource.gallery);

    if (theVid != null) {
      setState(() {
        videoFile = theVid as File;
        print("set");
      });
    }
  }

  _record() async {
    final XFile? theVid = await _picker.pickVideo(source: ImageSource.camera);

    if (theVid != null) {
      setState(() {
        videoFile = theVid as File;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: ListView(
          children: [
            Column(
              children: [
                SizedBox(
                  height: 50.0,
                ),
                //video
                Container(
                  color: Colors.brown,
                  height: MediaQuery.of(context).size.height * (30 / 100),
                  width: MediaQuery.of(context).size.width * (100 / 100),
                  child: videoFile == null
                      ? Center(
                          child: Icon(
                            Icons.videocam,
                            color: Colors.red,
                            size: 50.0,
                          ),
                        )
                      : FittedBox(
                          fit: BoxFit.contain,
                          child: mounted
                              ? Chewie(
                                  controller: ChewieController(
                                    videoPlayerController:
                                        VideoPlayerController.file(videoFile!),
                                    aspectRatio: 3 / 2,
                                    autoPlay: true,
                                    looping: true,
                                  ),
                                )
                              : Container(),
                        ),
                ),
                Container(
                  color: Colors.lightGreen,
                  height: MediaQuery.of(context).size.height * (30 / 100),
                  width: MediaQuery.of(context).size.width * (100 / 100),
                  child: FittedBox(
                    fit: BoxFit.contain,
                    child: imageFile == null
                        ? Center(
                            child: Icon(
                              Icons.photo,
                              color: Colors.blueAccent,
                            ),
                          )
                        : Image.file(imageFile!),
                  ),
                ),
                RaisedButton(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text('Camera'),
                      Icon(Icons.camera),
                    ],
                  ),
                  onPressed: () {
                    _camera();
                  },
                ),
                RaisedButton(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text('Picture'),
                      Icon(Icons.add_a_photo),
                    ],
                  ),
                  onPressed: () {
                    _picture();
                  },
                ),
                RaisedButton(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text('Video'),
                      Icon(Icons.video_library),
                    ],
                  ),
                  onPressed: () {
                    _videoPic();
                  },
                ),
                RaisedButton(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [Text('Record'), Icon(Icons.videocam)],
                  ),
                  onPressed: () {
                    _record();
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

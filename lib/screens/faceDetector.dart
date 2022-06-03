import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

List<CameraDescription> cameras = [];

class FaceDetector extends StatefulWidget {
  const FaceDetector({Key? key}) : super(key: key);

  @override
  State<FaceDetector> createState() => _FaceDetectorState();
}

class _FaceDetectorState extends State<FaceDetector> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}

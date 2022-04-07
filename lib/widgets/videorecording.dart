// import 'dart:async';
// import 'dart:io';
// import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:video_player/video_player.dart';

// class VideoRecording extends StatefulWidget {
//   VideoRecording({ Key? key, required this.title }) : super(key: key);
  
//   final String title;

//   @override
//   State<VideoRecording> createState() => _VideoRecordingState();
// }

// class _VideoRecordingState extends State<VideoRecording> {
//   late File _imageFile;
//   dynamic _pickImageError;
//   bool isVideo = false;
//   late VideoPlayerController _controller;
//   late String _retrieveDataError;

//   void _onImageButtonPressed(ImageSource source) async{
//     if (_controller != null){
//       _controller.setVolume(0.0);
//       _controller.removeListener(_onVideoControllerUpdate);
//     }
//     if(isVideo){
//       ImagePicker.pickVideo(source: source).then(File file){
//         if(file != null && mounted){
//           setState((){
//             _controller = VideoPlayerController.file(file)
//             ..addListener(_onVideoControllerUpdate)
//             ..setVolume(1.0)
//             ..initialize()
//             ..setLooping(true)
//             ..play();
//           });
//         }
//       });
//   } else{
//     try {
//       _imageFile = await ImagePicker.pickImage(source: source);
//     } catch(e) {
//       _pickImageError = e;
//     }
//     setState(() {});
//   }
//   }

//   void _onVideoControllerUpdate(){
//     setState(() {});
//   }

//   @override
//   void deactivete(){
//     if(_controller != null){
//       _controller.setVolume(0.0);
//       _controller.removeListener(_onVideoControllerUpdate);
//     }
//     super.deactivate();
//   }

//   @override
//   void dispose(){
//     if(_controller != null){
//       _controller.dispose();
//     }
//     super.dispose();
//   }

//   Widget _previewVideo(VideoPlayerController controller) {
//     final Text retrieveError = _getRetrieveErrorWidget();
//     if (retrieveError != null){
//       return retrieveError;
//     }
//     if (controller == null){
//       return const Text(
//         'You have not yet picked a video',
//         textAlign: TextAlign.center,
//       );
//     }
//   }

//   Future<void> retrieveLostData() async{
//     final LostDataResponse response = await ImagePicker.retrieveLostData();
//     if (response.isEmpty){
//       return;
//     }
//   }
//   if(response.file != null){
//     setState(() {
//       if (response.type == RetrieveType.video){
//         isVideo = true;
//         _controller = VideoPlayerController.file(response.file)
//         ..addListener(_onVideoControllerUpdate)
//         ..setVolume(1.0)
//         ..initialize(true)
//         ..play();
//       } else{
//         isVideo = false;
//         _imageFile = response.file;
//       }
//     });
//   } else{
//     _retrieveDataError = respose.exception.code;
//   }

//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     throw UnimplementedError();
//   }
//     }

//     @override

//     Widget build(BuildContext context){
//       return Scaffold(
//         appBar: AppBar(
//           title: Text(Widget.title),
//         ),
//         body: Center(
//           child: Platform.isAndroid
//           ? FutureBuilder<void>(
//             builder: (BuildContext context, AsynSnapshot<void> snapshot) {
//               switch (snapshot.connectionState){
//                 case ConnectionState.none:
//                 case ConnectionState.waiting:
//                 return const Text(
//                   'You have not yet picked an image.',
//                   textAlign: TextAlign.center,
//                 );
//                 case ConnectionState.done:
//                 return isVideo
//                 ? _previewVideo(_controller)
//                 : _previewImage();
//                 default:
//                 if (snapshot.hasError){
//                   return Text(
//                     'Pick image/video error: ${snapshot.error}}'
//                     textAlign: TextAlign.center,
//                   );
//                 } else{
//                   return const Text(
//                     'You have not yet picked an image.',
//                     textAlign: TextAlign.center,
//                   );
//                 }
//               } 
//             },
//           )
//           : (isVideo ? _previewVideo(_controller) : _previewImage()),
//         ),
//         floatingActionButton: Columu(
//           MainAxisAlignment: MainAxisAlignment.end,
//           children: <Widget>[
//             FloatingActionButton(
//               onPressed: (){
//                 isVideo = false;
//                 _onImageButtonPressed(ImageSource.gallery);
//               },
//               heroTag: 'image0',
//               tooltip: 'Pick Image from gallery',
//               child: const Icon(Icons.photo_library),
//             ),
//             Padding(
//               padding: const EdgeInsets.only(top:16.0),
//               child: FloatingActionButton(
//                 onPressed: (){
//                   isVideo = false;
//                   _onImageButtonPressed(ImageSource.camera);
//                 },
//                 heroTag: 'image1',
//                 tooltip: 'Take a photo',
//                 child: const Icon(Icons.camera_alt),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.only(top:16.0),
//               child: FloatingActionButton(
//                 backgroundColor: Colors.red,
//                 onPressed: (){
//                   isVideo = true;
//                   _inImageButtonPressed(ImageSourse.gallery);
//                 },
//                 heroTag: 'video0',
//                 tooltip: 'Pick Video from gallery',
//                 child: const Icon(Icons.video_library),
//                 ),
//             ),
//             Padding(
//               padding: const EdgeInsets.only(),
//               child: FloatingActionButton(
//                 backgroundColor: Colors.red,
//                 onPressed: (){
//                   isVideo = true;
//                   _onImageButtonPressed(ImageSource.camera);
//                 },
//                 heroTag: 'video1',
//                 tooltip: 'Take a Video',
//                 child: const Icon(Icons.videocam),
//               ),
//             ),
//           ],
//         ),
//       );
//     }
      
//       Text _getRetrieveErrorWidget(){
//         if (_retrieveDataError != null) {
//           final Text result = Text(_retrieveDataError);
//           _retrieveDataError = null;
//           return result;
//         }
//         return null;
//       }
//       }
    
  
// class AspectRatioVideo extends StatefulWidget {
//   AspectRatioVideo(this.controller);

//   final VideoPlayerController controller;

//   @override
//   AspectRatioVideoState createState() => AspectRatioVideoState();
// }

// class AspectRatioVideoState extends State<AspectRatioVideo>{
//   VideoPlayerController get controller => widget.controller;
//   bool initialized = false;
// }

// void _onVideoControllerUpdate(){
//   if (!mounted){
//     return;
//   }
//   if (initialized != controller.value.initialized){
//     initialized = controller.value.initialized;
//     setState((){});
//   }
// }

// @override
// void initState() {
//     super.initState();
//     controller.addListener(_onVideoControllerUpdate);
//   }

//    @override
//   Widget build(BuildContext context) {
//     if (initialized) {
//       return Center(
//         child: AspectRatio(
//           aspectRatio: controller.value?.aspectRatio,
//           child: VideoPlayer(controller),
//         ),
//       );
//     } else {
//       return Container();
//     }
//   }
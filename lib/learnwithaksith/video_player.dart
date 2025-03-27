// import 'package:flutter/material.dart';
// import 'package:appinio_video_player/appinio_video_player.dart';
// // enum Source{
// //   Assets,
// //   Network
// // }
// class VideoPlayerPackage extends StatefulWidget {
//   const VideoPlayerPackage({super.key});
//
//   @override
//   State<VideoPlayerPackage> createState() => _VideoPlayerPackageState();
// }
//
// class _VideoPlayerPackageState extends State<VideoPlayerPackage> {
//   // Source currentsource=Source.Assets;
//
//   late CustomVideoPlayerController _customVideoPlayerController;
//   late CachedVideoPlayerController _videoPlayerController; // Moved outside of the method
//   String assetPath = "assets/videos/movie.mp4";
//   String url = "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4";
//
//   @override
//   void initState() {
//     super.initState();
//     initializeVideoPlayer("asset");
//   }
//
//   @override
//   void dispose() {
//     _videoPlayerController.dispose();
//     _customVideoPlayerController.dispose();
//     super.dispose();
//   }
//
//   void initializeVideoPlayer(String source) {
//
//     if(source=="asset"){
//       _videoPlayerController=CachedVideoPlayerController.asset(assetPath)..initialize().then((value){
//         setState(() {
//
//         });
//       });
//     }else if(source=="network"){
//       _videoPlayerController=CachedVideoPlayerController.network(url)..initialize().then((onValue){
//         setState(() {
//
//         });
//       });
//     }else{
//       return;
//     }
//     // _videoPlayerController = CachedVideoPlayerController.asset(assetPath)
//     //   ..initialize().then((_) {
//     //     setState(() {}); // Ensure the UI is updated after initialization
//     //   }).catchError((error) {
//     //     print("Error initializing video player: $error");
//     //   });
//
//     _customVideoPlayerController = CustomVideoPlayerController(
//       context: context,
//       videoPlayerController: _videoPlayerController,
//     );
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Video Player"),
//         centerTitle: true,
//         elevation: 20,
//       ),
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           _videoPlayerController.value.isInitialized
//               ? SizedBox(
//             height: 250,
//             width: double.infinity,
//             child: CustomVideoPlayer(
//               customVideoPlayerController: _customVideoPlayerController,
//             ),
//           )
//               : CircularProgressIndicator(),
//           SizedBox(
//             height: 20,
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               ElevatedButton(onPressed: (){
//               initializeVideoPlayer("asset");
//               },
//                   child: Text("Assets")),
//               ElevatedButton(onPressed: (){
//               initializeVideoPlayer("network");
//                 },
//                   child: Text("Network")),
//             ],
//           )
//         ],
//       ),
//     );
//   }
// }
//
//
//
//
//   // void enterfullscreen(){
//   //   SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
//   //   SystemChrome.setPreferredOrientations([
//   //     DeviceOrientation.landscapeLeft,
//   //     DeviceOrientation.landscapeRight
//   //   ]);
//   // }
//   // void exitfullscreen(){
//   //   SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,overlays: SystemUiOverlay.values);
//   //   SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
//   // }

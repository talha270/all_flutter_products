//
// import 'package:flutter/material.dart';
// import 'package:geocoding/geocoding.dart';
// import 'package:geolocator/geolocator.dart';
// class Geolocation extends StatefulWidget{
//   const Geolocation({super.key});
//
//   @override
//   State<Geolocation> createState()=>Geolocationstate();
// }
// class Geolocationstate extends State<Geolocation>{
//   Position? position;
//   String? latitude;
//   String? longitude;
//   String? currentplace;
//   fetposition()async{
//     bool servicenabled;
//     LocationPermission permission;
//     servicenabled=await Geolocator.isLocationServiceEnabled();
//     if (!servicenabled){
//       // Fluttertoast.showToast(msg: "Location services are disabled");
//     }
//     permission=await Geolocator.checkPermission();
//     if (permission==LocationPermission.denied){
//       permission=await Geolocator.requestPermission();
//       if (permission==LocationPermission.denied){
//         // Fluttertoast.showToast(msg: "you denied the permission");
//         }
//     }
//     if (permission==LocationPermission.deniedForever){
//       // Fluttertoast.showToast(msg: "you denied the permission forever");
//     }
//     Position currentposition=await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
//   try {
//     List<Placemark> placemarks=await placemarkFromCoordinates(currentposition.latitude, currentposition.longitude);
//     Placemark place=placemarks[0];
//     setState(() {
//       position = currentposition;
//       latitude = currentposition.latitude.toString();
//       longitude = currentposition.longitude.toString();
//       currentplace="${place.locality}, ${place.country}, ${place.postalCode}";
//     });
//   }catch(e){
//     print(e);
//   }
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("current geolocation"),
//         elevation: 20,
//         backgroundColor: Colors.red,
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             position==null? const Text("Location"):Text(position.toString()),
//             const SizedBox(height: 10,),
//             ElevatedButton(onPressed: (){
//               fetposition();
//             }, child: const Text("Get location")),
//             Text(latitude.toString()),
//             Text(longitude.toString()),
//             Text(currentplace.toString()),
//
//           ],
//         ),
//       ),
//     );
//   }
// }
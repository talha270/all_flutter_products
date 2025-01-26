import'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:geocoding/geocoding.dart';
class Geolocatorpackage extends StatefulWidget {
  Geolocatorpackage({super.key});

  @override
  State<Geolocatorpackage> createState() => _GeolocatorpackageState();
}

class _GeolocatorpackageState extends State<Geolocatorpackage> {
  String currentaddress="my address";

  Position currentposition= Position(
    latitude: 0.0,
    longitude: 0.0,
    timestamp: DateTime.now(),
    accuracy: 0.0,
    altitude: 0.0,
    altitudeAccuracy: 0.0,
    heading: 0.0,
    headingAccuracy: 0.0,
    speed: 0.0,
    speedAccuracy: 0.0,
  );

  _determinelocation()async{
    bool serviceenabled;
    LocationPermission permission;

    serviceenabled=  await Geolocator.isLocationServiceEnabled();

    if(!serviceenabled){
      Fluttertoast.showToast(msg: "please enabled the location");
    }

    permission=await Geolocator.checkPermission();

    if(permission==LocationPermission.denied){
      permission=await Geolocator.requestPermission();
      if(permission==LocationPermission.denied){
       Fluttertoast.showToast(msg: "Location permission is denied");
      }
    }

    if(permission==LocationPermission.deniedForever){
      Fluttertoast.showToast(msg: "permission is denied forever");
    }
    Position position=await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high,);
    try{
      List<Placemark> placemarks=await placemarkFromCoordinates(position.latitude,position.longitude);
      Placemark place=placemarks[0];
      setState(() {
        currentposition=position;
        currentaddress="${place.locality}, ${place.postalCode}, ${place.country}";
      });
    }catch(e){
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Geoloator"),
      ),
      body:Center(
        child: Column(
          children: [
            Text(currentaddress),
            currentposition!=null? Text("latitude: ${currentposition.latitude.toString()}"):Container(),
            currentposition!=null? Text("Longitude: ${currentposition.longitude.toString()}"):Container(),
            TextButton(onPressed: (){
              _determinelocation();
            },
                child: const Text("Locate me"))
          ],
        ),
      ),
    );
  }
}

import 'dart:async';

import 'package:flutter/material.dart';

import 'bmi.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState(){
    super.initState();
    Timer(const Duration(seconds: 5), (){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const Homepage(),));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.indigoAccent,
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.ac_unit,size: 60,),
            Text("BMI app",style: TextStyle(fontSize: 35,fontStyle: FontStyle.italic,fontWeight: FontWeight.bold,fontFamily: "fontst"),),
          ],
        ),
      ),
    );
  }
}
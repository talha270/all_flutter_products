import 'package:flutter/material.dart';

class Gradientcolors extends StatelessWidget{
  const Gradientcolors({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text("gradient background",style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.transparent,
        elevation: 2,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
            // gradient:  LinearGradient(
            //   colors: [
            //     Color(0xffff9a9e), //0xff is campalsery to write at starting
            //     Color(0xfffecfef),
            //     // Colors.black87,
            //   ],
            //   // begin:Alignment.topCenter,
            //   // end:Alignment.bottomCenter,
            //   stops: [0.1,0.9]
            // )
          gradient:  RadialGradient(
            colors: [
              Color(0xffa43cd7), //0xff is campalsery to write at starting
              Color(0xffdc2430),
            ],
              // center: Alignment.bottomRight,
            center: Alignment.centerLeft,
            // stops: [0.0,0.9]
          )
        ),
        // child: ,
      ),
    );
  }
}
import 'package:flutter/material.dart';
class Containersized extends StatelessWidget{
  const Containersized({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.black,
        title: const Text("container and sizedbox",style: TextStyle(color:Colors.white),),
      ),
      body: Center(child: Container(
        // padding: const EdgeInsets.all(12), //padding is worked in inside the container
        // margin: const EdgeInsets.all(12),     //and margin is worked in outside the container
        height: 200,
        width: 200,
        decoration: const BoxDecoration(
          color: Colors.amber,
          borderRadius:
          // BorderRadius.circular(23),
          //   BorderRadius.all(Radius.elliptical(5, 40)),
          BorderRadius.only(topRight: Radius.circular(23),bottomLeft: Radius.circular(23)),
          // border: Border.all(
          //   color: Colors.cyan,
          //   width: 5
          // ),
          // boxShadow: [
          //   BoxShadow(
          //     blurRadius: 33,
          //     spreadRadius: 12,
          //     color: Colors.blue,
          //   )
          // ]
        ),
        child: const Center(child:
        Text("muhammad talha",style: TextStyle(fontSize: 23),)
          // Container(
          //   color: Colors.red,
          // ),
        ),
      )),
    );
  }
}
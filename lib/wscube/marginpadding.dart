import 'package:flutter/material.dart';

class Marginpadding extends StatelessWidget{
  const Marginpadding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("Home page")
      ),
      body: Container(
          color: Colors.blue,
          // margin: const EdgeInsets.all(43), //margin is a space outside the container
          child:Padding(  //padding is a space within the container
            padding: const EdgeInsets.all(20.0),
            child: Text("HELLO TALHA",style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold),),
          )),
    );
  }
}
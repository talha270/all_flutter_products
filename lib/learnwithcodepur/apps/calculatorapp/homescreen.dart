import 'dart:async';

import 'package:flutter/material.dart';

import 'calculatorscreen.dart';
class Homescreen extends StatefulWidget{
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const Calculatorscreen(),));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Material(
     child: Container(
       color: Colors.teal,
       child: const Center(
           child: Text("hello world",style: TextStyle(fontWeight: FontWeight.bold,fontStyle: FontStyle.italic,fontSize: 34),)),
     ),
    );
  }
}
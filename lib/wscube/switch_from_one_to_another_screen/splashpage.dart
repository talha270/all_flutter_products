import 'dart:async';
import 'package:all_flutter_tutorial/wscube/switch_from_one_to_another_screen/firstpage.dart';
import 'package:flutter/material.dart';
class Splashpage extends StatefulWidget{
  const Splashpage({super.key});

  @override
  State<Splashpage> createState() => Splashpagestate();
}
class Splashpagestate extends State<Splashpage>{
  @override
  void initState() {
  Timer(const Duration(seconds: 3), () {
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Firstpage(),));
  });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.indigo.shade400,
        child: const Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.ac_unit,size: 60,),
            Text("Classical app",style: TextStyle(fontSize: 35,fontStyle: FontStyle.italic,fontWeight: FontWeight.bold,fontFamily: "fontst"),),
          ],
        )),
      ),
    );
  }
}
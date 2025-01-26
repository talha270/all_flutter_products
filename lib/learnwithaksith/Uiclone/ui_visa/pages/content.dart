import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utilites/text.dart';
class Content extends StatelessWidget{
  const Content({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Positioned(
              right: -180,
              child: Container(
            height: 300,
            width: 300,
            decoration:BoxDecoration(color: Colors.white.withOpacity(0.2),shape: BoxShape.circle),
          )),
          Positioned(
              left: -180,
              bottom: -460,
              child: Container(
                height: 600,
                width: 600,
                decoration:BoxDecoration(color: Colors.white.withOpacity(0.2),shape: BoxShape.circle),
              )),
          Positioned(
              top: 20,
              left: 10,
              child: Container(
            height: 30,
            child: Image.asset("assets/images/visa.png"),
          )),
          Positioned(
              top: 50,
              left: 20,
              child: Modifiedtext(text: "it's where you want to be", color: Colors.grey.shade900, size: 16)),
          Positioned(
              bottom: 80,
              left: 20,
              child: Text("0232 3422 5643 1231",style: GoogleFonts.sourceCodePro(fontSize:12,fontWeight: FontWeight.bold,color: Colors.grey.shade700  ),)),
          Positioned(
              bottom: 60,
              left: 20,
              child: Text("Muhammad talha",style: GoogleFonts.sourceCodePro(fontSize:12,fontWeight: FontWeight.bold,color: Colors.grey.shade700  ),)),
          Positioned(
              top: 20,
              right: 10,
              child: Container(
            height: 70,
            child: Image.asset("assets/images/chip.png"),))
        ],


      ),
    );
  }
}
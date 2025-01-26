import 'package:flutter/material.dart';

class CustomFonts extends StatelessWidget{
  const CustomFonts({super.key});

  @override
  Widget build(Object context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Custom Fonts"),
        shadowColor: Colors.black38,
        backgroundColor: Colors.white,
        elevation: 20,
      ),
      body:Container(
        height: double.infinity,
        width: double.infinity,
        child: Center(
          child: Container(
            height: 200,
            width: 300,
            decoration:  BoxDecoration(
                color: Colors.indigo,
                borderRadius: BorderRadius.circular(12),
                border:Border.all(
                  width: 2,

                ),
                boxShadow: const[
                  BoxShadow(
                    blurRadius: 23,
                    // spreadRadius: 23,
                    color: Colors.red
                  )
                ]
            ),
            child: const Center(
              child: Text(
                "Muhammad talha",style: TextStyle(
                  fontFamily: "customfont",fontWeight: FontWeight.bold,fontSize: 40
              ),
              ),
            ),
          ),
        ),
      ),
    );
  }

}
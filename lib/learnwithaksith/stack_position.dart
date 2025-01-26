import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Stackwidgets extends StatelessWidget{

  const Stackwidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Stack and position widgets"),
          elevation: 30,
          backgroundColor: Colors.red,
        ),
        body:Container(
          color: Colors.yellow,
          child: Stack(
            children: [
              Center(
                child: Container(
                  height: 400,
                  width: 400,
                  color: Colors.red,
                ),
              ),
              Center(
                child: Container(
                  height: 200,
                  width: 200,
                  color: Colors.black,
                ),
              ),Center(
                child: Container(
                  height: 100,
                  width: 100,
                  color: Colors.yellow,
                ),
              ),
              //
              // Positioned(
              //     top: 40,
              //     child: Container(
              //   height: 300,
              //   width: 400,
              //   decoration: const BoxDecoration(
              //       image: DecorationImage(image: AssetImage("assets/images/12.jpg"),fit: BoxFit.cover)
              //   ),
              // )),
              // const Positioned(
              //     top: 250,
              //     left: 20,
              //     child: Text("Position widgets used.",style: TextStyle(color: Colors.red),)),
              //
              // Align(
              //   alignment: Alignment.bottomCenter,
              //   child: Container(
              //     height: 200,
              //     width: 200,
              //     color: Colors.red,
              //   ),
              // )

            ],

          ),
        )
    );
  }
}

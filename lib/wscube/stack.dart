import 'package:flutter/material.dart';

class Stackwidget extends StatelessWidget{
  const Stackwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 5,
        shadowColor: Colors.black,
        title: const Text("positional widght"),
      ),
      drawer: const Drawer(),
      body:
      Stack(
          children:[
            Positioned(
              top: 0,
              left: 0,
              // right: 50,
              // bottom: 50,
              // height: 345,
              // width: 846,
              child: Container(
                height: 200,
                width: 200,
                color: Colors.deepPurple,
              ),
            ),
            Positioned(
              top: 500,
              left: 100,
              // right: 50,
              // bottom: 50,
              // height: 345,
              // width: 846,
              child: Container(
                height: 200,
                width: 200,
                color: Colors.deepPurple,
              ),
            ),
          ]
      ),
    );
  }
}
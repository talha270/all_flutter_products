import 'package:flutter/material.dart';

class Wrapwidget extends StatelessWidget{
  const Wrapwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: const Text("warp widght"),
      ),
      drawer: const Drawer(),
      body: Wrap(
        // direction: Axis.vertical,
        direction: Axis.horizontal,
        spacing: 1,
        runSpacing: 12,
        alignment: WrapAlignment.center,
        children: [
          Container(
            height: 100,
            width: 100,
            color: Colors.red,
          ),
          Container(
            height: 100,
            width: 100,
            color: Colors.indigo,
          ),
          Container(
            height: 100,
            width: 100,
            color: Colors.lime,
          ),
          Container(
            height: 100,
            width: 100,
            color: Colors.green,
          ),
          Container(
            height: 100,
            width: 100,
            color: Colors.pinkAccent,
          ),
          Container(
            height: 100,
            width: 100,
            color: Colors.lime,
          ),
          Container(
            height: 100,
            width: 100,
            color: Colors. amber,
          ),
          Container(
            height: 100,
            width: 100,
            color: Colors.blue,
          ),
          Container(
            height: 100,
            width: 100,
            color: Colors.lightGreen,
          ),
          Container(
            height: 100,
            width: 100,
            color: Colors.black,
          ),
          Container(
            height: 100,
            width: 100,
            color: Colors.deepPurple,
          ),
        ],
      ),
    );
  }
}
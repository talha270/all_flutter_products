import 'package:flutter/material.dart';

class ExpandedWidget extends StatelessWidget{
  const ExpandedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:AppBar(
          title : const Text("Home page"),
        ),
        body:Column(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                // width: 50,
                height: 200,
                color: Colors.amber,
              ),),
            Expanded(
              flex: 3,
              child: Container(
                // width: 50,
                height: 200,
                color: Colors.red,
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                // width: 50,
                height: 200,
                color: Colors.indigo,
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                // width: 50,
                height: 200,
                color: Colors.lightGreen,
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                // width: 50,
                height: 200,
                color: Colors.black54,
              ),
            ),
            Container(
              // width: 50,
              height: 100,
              color: Colors.black26,
            ),
          ],
        )
    );
  }
}
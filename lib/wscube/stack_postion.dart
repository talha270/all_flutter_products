import 'package:flutter/material.dart';

class StackPostion extends StatelessWidget{
  const StackPostion({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("stack weight"),
      ),
      drawer: const Drawer(

      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.red.shade100,
        child: Stack(
          children: [
            Container(
              height: 300,
              width: 300,
              color: Colors.teal,
            ),
            Positioned(
              left: 30,
              top: 30,
              child: Container(
                height: 300,
                width: 300,
                color: Colors.cyan,
              ),
            )
          ],
        ),
      ),
    );
  }
}
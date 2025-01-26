import 'package:flutter/material.dart';

class Mobilebody extends StatelessWidget {
  const Mobilebody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("mobilebody"),backgroundColor: Colors.deepPurple,),
      backgroundColor: Colors.red.shade100,
      body:Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: AspectRatio(
              aspectRatio: 16/6,
              child: Container(
                height: 300,
                color: Colors.deepPurple,
              ),
            ),
          ),
          Expanded(child: ListView.builder(itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 100,
              color: Colors.deepPurple.shade300,
            ),
          ),
            itemCount: 8,
          )
          )

        ],
      ),
    );
  }
}
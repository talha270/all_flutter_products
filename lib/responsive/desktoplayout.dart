import 'package:flutter/material.dart';

class Desktopbody extends StatelessWidget {
  const Desktopbody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Desktopbody"),),
      backgroundColor: Colors.deepPurple.shade200,
      body:Row(
        children: [
          Expanded(
            child: Column(
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
          ),
          Container(
            width: MediaQuery.of(context).size.width*0.3,
            color: Colors.deepPurple.shade300,
          )
        ],
      ),
    );
  }
}

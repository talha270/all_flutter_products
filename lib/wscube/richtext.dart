import 'package:flutter/material.dart';

class Richtextwidget extends StatelessWidget{
  const Richtextwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("rich text"),
      ),
      drawer: const Drawer(),
      body: Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.orange.shade50,
          child:RichText(
            text: const TextSpan(
                style: TextStyle(
                  color: Colors.deepPurple,
                  fontSize: 21,
                ),
                children:<TextSpan> [
                  TextSpan(text:"hello "),
                  TextSpan(text: "world!",style: TextStyle(
                    fontSize: 34,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  )),
                  TextSpan(text: " welcome to "),
                  TextSpan(text: "flutter",style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 43,
                      fontStyle: FontStyle.italic
                  ))
                ]
            ),
          )
      ),
    );
  }
}
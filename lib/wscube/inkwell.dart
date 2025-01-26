import 'package:flutter/material.dart';

class Inkwellwidget extends StatelessWidget{
  const Inkwellwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(bottom: 20),
          child: Text("Home page"),
        ),
      ),
      body: Center(
        child: InkWell(
          onTap: (){
            print("on tap ");
          },
          onLongPress: (){
            print("on long tap");
          },
          onDoubleTap: (){
            print("on double tap");
          },
          child: Container(
            height: 200,
            width: 200,
            decoration: BoxDecoration(
                color: Colors.indigo.shade100,
                shape: BoxShape.circle,
                // borderRadius: BorderRadius.circular(100),
                border: Border.all(
                  color: Colors.indigo,
                  width: 10,
                ),
                boxShadow: const [
                  BoxShadow(
                    blurRadius: 23,
                  )
                ]
            ),
            child: const Center(child: Text("Click here",style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold))),
          ),
        ),
      ),
    );
  }
}
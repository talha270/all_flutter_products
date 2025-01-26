import 'package:all_flutter_tutorial/wscube/custom_widget/custom_button.dart';
import 'package:flutter/material.dart';

class Custom extends StatelessWidget{
  const Custom({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("custom weight"),
      ),
      drawer: const Drawer(

      ),
      body:
      Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.purple.shade50,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: SizedBox(
                width: 110,
                height: 60,
                child: CustomButton(name: "click",function: (){
                  print("clicked");
                },icon: const Icon(Icons.lock_outline),color: Colors.red,textStyle: const TextStyle(fontSize: 23,fontWeight: FontWeight.bold,)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30,top: 10),
              child: SizedBox(
                width: 110,
                height: 60,
                child: CustomButton(name: "play",function: (){
                  print("clicked");
                },icon: const Icon(Icons.play_arrow),color: Colors.red,textStyle: const TextStyle(fontSize: 23,fontWeight: FontWeight.bold,)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30,top: 10),
              child: SizedBox(
                width: 114,
                height: 60,
                child: CustomButton(name: "login",function: (){
                  print("login");
                },icon: const Icon(Icons.login),color: Colors.red,textStyle: const TextStyle(fontSize: 23,fontWeight: FontWeight.bold,)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


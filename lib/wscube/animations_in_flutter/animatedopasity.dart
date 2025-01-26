import 'package:flutter/material.dart';

class Animatedopacity extends StatefulWidget{
  const Animatedopacity({super.key});

  @override
  State<Animatedopacity> createState()=> Animatedopacitystate();
}
class Animatedopacitystate extends State<Animatedopacity>{
  var _opacity=1.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("animated opacity"),),
      drawer: const Drawer(),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.blueGrey.shade200,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedOpacity(
              opacity: _opacity,
              duration: const Duration(seconds: 1),
              curve: Curves.bounceIn,
              child: Container(
                height: 100,
                width: 100,
                color: Colors.blueGrey,
              ),
            ),
            ElevatedButton(onPressed: (){
              setState(() {
                if(_opacity==1.0){
                  _opacity=0.0;
                }else {
                  _opacity = 1.0;
                }
              });
            },
                child: const Text("Change"))
          ],
        ),
      ),
    );
  }
}
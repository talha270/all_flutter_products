import 'dart:async';

import 'package:flutter/material.dart';

class Animatedcrossfade extends StatefulWidget{
  const Animatedcrossfade({super.key});
  @override
  State<Animatedcrossfade> createState()=> Animatedcrossfadestate();
}
class Animatedcrossfadestate extends State<Animatedcrossfade>{
  bool isfirst=true;
  void reload(){
    setState(() {
    isfirst? isfirst=false: isfirst=true;
    });
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(seconds: 4), ()=>reload());
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("animated cross fade"),
      ),
    body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AnimatedCrossFade(
          firstCurve: Curves.bounceInOut,
          secondCurve: Curves.decelerate,
          firstChild: Center(
              child: Container(
                height: 200,
                width: 200,
                color: Colors.blueGrey,
              ),
            ),
            secondChild: Center(child: Image.asset("assets/images/hack.jpg",width: 200,height: 200,)),
            crossFadeState: isfirst? CrossFadeState.showFirst:CrossFadeState.showSecond,
            duration: const Duration(seconds: 1),

        ),
        const SizedBox(height: 20,),
        ElevatedButton(onPressed: ()=>reload(), child: const Text("Switch"))
      ],
    ),
    );
  }
}
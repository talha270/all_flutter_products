import 'package:flutter/material.dart';

import 'details.dart';

class Heroanimation extends StatefulWidget{
  const Heroanimation({super.key});
  @override
  State<Heroanimation> createState()=> Heroanimationstate();
}
class Heroanimationstate extends State<Heroanimation>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hero animation"),
      ),
      drawer: const Drawer(),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.red.shade200,
        child: InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => const Detail(),));
          },
          child: Hero(
            tag: "background",
            child: Image.asset("assets/images/hack.jpg",
              width: 200,height: 200,),
          ),
        ),
      ),
    );
  }
}
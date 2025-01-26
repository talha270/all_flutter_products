import 'package:flutter/material.dart';

class Listwheel extends StatelessWidget{
  Listwheel({super.key});
  final indexarr=[1,2,3,4,5,6,7,8,9,10,11,12,13];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("list wheel"),),
      drawer: const Drawer(),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color:Colors.cyan.shade100,
        child: ListWheelScrollView(
            itemExtent: 100,
            children: indexarr.map((value) => Container(width: 300,color: Colors.red,
              child: Text("$value",style: const TextStyle(fontStyle: FontStyle.italic,fontWeight: FontWeight.bold,fontSize: 23),),)).toList()
        ),
      ),
    );
  }
}
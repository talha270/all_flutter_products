import 'package:flutter/material.dart';

class Iconswidgets extends StatelessWidget{
  const Iconswidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("icon widght"),
      ),
      drawer: const Drawer(),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.deepPurple.shade50,
        child: const Icon(Icons.add_home_work_outlined,size: 60,color: Colors.red,),
      ),
    );
  }
}
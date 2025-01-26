import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class FontAwesomeIcon extends StatelessWidget{
  const FontAwesomeIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("font awesome icon"),
      ),
      drawer: const Drawer(),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.brown.shade50,
        child: const Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.add_home_work_outlined,size: 60,color: Colors.brown,),
              SizedBox(width: 20,),
              FaIcon(FontAwesomeIcons.amazon,size: 40,color: Colors.brown,)
            ],
          ),
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';

class Clipreact extends StatelessWidget{
  const Clipreact({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("clip react"),),
        body: Center(
          child: ClipRRect(
            clipBehavior: Clip.hardEdge,
            borderRadius: const BorderRadius.only(topLeft: Radius.elliptical(52, 83),topRight: Radius.circular(23),bottomLeft: Radius.circular(23),bottomRight: Radius.circular(23)),
            child: Image.asset("assets/images/12.jpg"),
          ),
        )
    );
  }
}
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Lottieanimation extends StatelessWidget {
  const Lottieanimation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(child: Lottie.asset("assets/animation/animation_gif.json",width: 50,height: 50)),
          Center(child: Image.asset("assets/animation/animation_gif.gif",width: 50,height: 50)),
        ],
      ),
    );
  }
}


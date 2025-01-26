import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
class Animatedtextpackage extends StatelessWidget{
  const Animatedtextpackage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: const Text("Animated text package"),
        backgroundColor: Colors.red,
        elevation: 30,
      ) ,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            AnimatedTextKit(animatedTexts: [
              TypewriterAnimatedText("I am a developer.",
                textStyle: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic,),
                speed: const Duration(milliseconds: 20),
              ),
              TypewriterAnimatedText("We Made the Beautiful World.",
                textStyle: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic,),
                speed: const Duration(milliseconds: 10),
              ),
            ],
              totalRepeatCount: 5,
              pause: const Duration(milliseconds: 300),
              displayFullTextOnTap: true,
              isRepeatingAnimation: true,
              stopPauseOnTap: true,
            ),
            //
            AnimatedTextKit(animatedTexts: [
              RotateAnimatedText("Hello",textStyle: const TextStyle(fontStyle: FontStyle.italic,fontWeight: FontWeight.bold,color: Colors.red)),
              RotateAnimatedText("Beautiful",textStyle: const TextStyle(fontStyle: FontStyle.italic,fontWeight: FontWeight.bold,color: Colors.yellow)),
              RotateAnimatedText("World",textStyle: const TextStyle(fontStyle: FontStyle.italic,fontWeight: FontWeight.bold,color: Colors.white),),

            ],
              // totalRepeatCount: 5,
              // pause: const Duration(milliseconds: 300),
              // displayFullTextOnTap: true,
              // isRepeatingAnimation: true,
              // stopPauseOnTap: true,
            ),
            AnimatedTextKit(animatedTexts: [
              WavyAnimatedText("Hello World",textStyle: const TextStyle(fontStyle: FontStyle.italic,fontWeight: FontWeight.bold,color: Colors.red,fontSize: 40),),
            ],
            ),

            // AnimatedTextKit(
            //   animatedTexts: [
            //     FadeAnimatedText(
            //       'Wait',
            //       textStyle: const TextStyle(fontSize: 42.0, fontWeight: FontWeight.bold),
            //     ),
            //     ScaleAnimatedText(
            //       'I am a developer',
            //       textStyle: const TextStyle(fontSize: 70.0, fontFamily: 'Canterbury'),
            //     ),
            //   ],
            // ),
          ],
        ),
      ),
    );
  }
}
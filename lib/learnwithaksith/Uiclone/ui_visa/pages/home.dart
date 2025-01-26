import 'package:flutter/material.dart';

import '../utilites/colors.dart';
import 'content.dart';
class Home extends StatelessWidget{
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Tcolors.bgcolor,
      body: Center(
        child: Container(
          margin: const EdgeInsets.all(5),
          height: 250,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(boxShadow: Tcolors.shadows),
          child: const Content(),
          // child: Stack(
          //   children: [
          //     Positioned(
          //         right: -170,
          //         child: Container(
          //       height: 300,
          //       width: 300,
          //       decoration: BoxDecoration(
          //         color: Colors.white.withOpacity(0.2),
          //         shape: BoxShape.circle,
          //       ),
          //     )),
          //     Positioned(
          //         left: -180,
          //         bottom: -470,
          //         child: Container(
          //           height: 600,
          //           width: 600,
          //           decoration: BoxDecoration(
          //             color: Colors.white.withOpacity(0.2),
          //             shape: BoxShape.circle,
          //           ),
          //         )),
          //     Positioned(
          //     top: 20,
          //         left: 15,
          //         child: Container(
          //         height: 40,
          //         child: Image.asset("assets/images/visa.png"))),
          //     Positioned(
          //         top: 58,
          //         left: 25,
          //         child: Modifiedtext(text: "it's where you want to be", color: Colors.grey.shade900, size: 14))
          //   ],
          // )
        ),
      ),
    );
  }
}
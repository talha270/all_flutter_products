import 'package:shimmer/shimmer.dart';
import 'package:flutter/material.dart';

class Shimmerpackage extends StatefulWidget {
  const Shimmerpackage({super.key});

  @override
  State<Shimmerpackage> createState() => _ShimmerpackageState();
}

class _ShimmerpackageState extends State<Shimmerpackage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Shimmer"),
        elevation: 5,
        backgroundColor: Colors.white,
      ),
      body:
      Container(
        child: Shimmer.fromColors(
            baseColor: Colors.black, highlightColor: Colors.black12,
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) => Container(
                margin: const EdgeInsets.all(10),
                color: Colors.red,
                height: 100,
                width: 100,
              )
            )),
      )
      // Center(
      //   child: Shimmer.fromColors(
      //     direction: ShimmerDirection.ltr,
      //       baseColor: Colors.black, highlightColor: Colors.red,
      //       child: const Text("Subscribe",style: TextStyle(fontSize: 60),)),
      // ),
    );
  }
}


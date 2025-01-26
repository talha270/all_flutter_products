import 'package:flutter/material.dart';

class Sizeboxwidget extends StatelessWidget{
  const Sizeboxwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("size box"),
        ),
        drawer: const Drawer(),
        body:
        // Center(
        //   child: SizedBox(
        //     height: 50,
        //     width: 100,
        //     child: ElevatedButton(
        //       onPressed: (){},
        //       child: const Text("size box"),
        //     )
        //   ))

        // Center(
        //   child: SizedBox.expand(
        //     child: ElevatedButton(
        //       onPressed: (){},
        //       child: const Text("size box"),
        //     ),
        //   ),
        // ),

        // Center(
        //   child: SizedBox.shrink(
        //     child: ElevatedButton(
        //       onPressed: (){},
        //       child: const Text("size box"),
        //     ),
        //   ),
        // ),

        Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(
              maxHeight:80 ,
              maxWidth: 400,
              minHeight: 30,
              minWidth: 100,
            ),
            child: SizedBox.shrink(
              child: ElevatedButton(
                onPressed: (){},
                child: const Text("size box"),
              ),
            ),
          ),
        ),

        // Wrap(
        //     // direction: Axis.vertical,
        //     direction: Axis.horizontal,
        //
        //     children: [
        //       SizedBox.square(
        //         dimension: 100,
        //         child: ElevatedButton(
        //           onPressed: (){},
        //           child: const Text("size box"),
        //         ),
        //       ),
        //       const SizedBox(
        //         // width: 20,
        //         height: 20,
        //       ),
        //       SizedBox.square(
        //         dimension: 100,
        //         child: ElevatedButton(
        //           // style: ElevatedButton.styleFrom(
        //           //   backgroundColor: Colors.black
        //           // ),
        //           onPressed: (){},
        //           child: const Text("size box"),
        //         ),
        //       ),
        //       const SizedBox(
        //         // width: 50,
        //         height: 50,
        //       ),
        //       SizedBox.square(
        //         dimension: 100,
        //         child: ElevatedButton(
        //           onPressed: (){},
        //           child: const Text("size box"),
        //         ),
        //       ),
        //     ]
        // )
    );
  }
}
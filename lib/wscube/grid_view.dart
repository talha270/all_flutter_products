import 'package:flutter/material.dart';

class GridViewwidget extends StatelessWidget {
  GridViewwidget ({super.key});

  final arrcolors=[
    Colors.lime,
    Colors.lightGreen,
    Colors.indigo,
    Colors.red,
    Colors.pinkAccent,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(bottom: 8),
          child: Text('Grid view',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 23),),
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.purple.shade50,
        child:
        // SingleChildScrollView(
        //     child:
        Column(
              children: [
                // SizedBox(
                //   width: 400,
                //   height: 200,
                //   child: GridView.count(
                //   crossAxisCount: 4,   //no of container in row
                //   crossAxisSpacing: 10, //space in row container
                //   mainAxisSpacing: 10,  //space in column container
                //   scrollDirection: Axis.horizontal,
                //
                //   children: [
                //     Container(color: Colors.purple.shade200,),
                //     Container(color: Colors.purple.shade200,),
                //     Container(color: Colors.purple.shade200,),
                //     Container(color: Colors.purple.shade200,),
                //     Container(color: Colors.purple.shade200,),
                //     Container(color: Colors.purple.shade200,),
                //     Container(color: Colors.purple.shade200,),
                //     Container(color: Colors.purple.shade200,),
                //     Container(color: Colors.purple.shade200,),
                //       ]),
                // ),
                // Container(
                //   height: 20,
                // ),
                SizedBox(
                  height: 200,
                  child: GridView.extent(
                    maxCrossAxisExtent: 100,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    scrollDirection: Axis.horizontal,

                    children: [
                      Container(color: Colors.lime,),
                      Container(color: Colors.lime,),
                      Container(color: Colors.lime,),
                      Container(color: Colors.lime,),
                      Container(color: Colors.lime,),
                      Container(color: Colors.lime,),
                      Container(color: Colors.lime,),
                    ],
                  ),
                ),
                // Container(
                //   height: 100,
                //   width: 100,
                //   color: Colors.teal,
                // ),
                // Container(
                //   height: 100,
                //   width: 100,
                //   color: Colors.purple,
                // ),
                // Container(
                //   height: 100,
                //   width: 100,
                //   color: Colors.lightGreen,
                // ),
                // Container(
                //   height: 100,
                //   width: 100,
                //   color: Colors.pink,
                // ),
        // GridView.builder(
        //   itemBuilder:(context, index) {
        //     return Container(color: arrcolors[index],);
        //   },
        //   itemCount: arrcolors.length,
        //   // gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        //   //     crossAxisCount: 4,
        //   //     crossAxisSpacing: 10,
        //   //   mainAxisExtent: 200,
        //   //   mainAxisSpacing: 10,
        //   // ),
        //   gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        //     maxCrossAxisExtent: 100,
        //     crossAxisSpacing: 10,
        //     mainAxisExtent: 300,
        //     mainAxisSpacing: 10,
        //   ),
        // ),
        ],
        ),
        // ),
      ),
    );
  }
}

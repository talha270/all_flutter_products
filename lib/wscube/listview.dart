import 'package:flutter/material.dart';

class Listviewwidget extends StatelessWidget{
  const Listviewwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Padding(
          padding: EdgeInsets.only(bottom: 20),
          child: Text("home page",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 23),),
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.indigo.shade400,
        child:
        // this is only scroll view
        // ListView(
        //   // scrollDirection: Axis.horizontal,
        //   reverse: true,
        //   children: [
        //     Padding(
        //       padding: const EdgeInsets.all(8.0),
        //       child: Container(
        //         height: 200,
        //         width: 200,
        //         decoration: BoxDecoration(
        //           color: Colors.indigo.shade300,
        //           borderRadius: BorderRadius.circular(10),
        //           boxShadow: const[
        //             BoxShadow(
        //               blurRadius: 23,
        //             )
        //           ]
        //         ),
        //       ),
        //     ),
        //   Padding(
        //     padding: const EdgeInsets.all(8.0),
        //     child: Container(
        //       height:200 ,
        //       width: 200,
        //       decoration: BoxDecoration(
        //         color: Colors.indigo.shade300,
        //         borderRadius: BorderRadius.circular(10),
        //         boxShadow: const [
        //           BoxShadow(
        //             blurRadius: 23,
        //           )
        //         ]
        //       ),
        //     ),
        //   ),
        //     Padding(
        //       padding: const EdgeInsets.all(8.0),
        //       child: Container(
        //         height:200 ,
        //         width: 200,
        //         decoration: BoxDecoration(
        //             color: Colors.indigo.shade300,
        //             borderRadius: BorderRadius.circular(10),
        //             boxShadow: const [
        //               BoxShadow(
        //                 blurRadius: 23,
        //               )
        //             ]
        //         ),
        //       ),
        //     ),
        //     Padding(
        //       padding: const EdgeInsets.all(8.0),
        //       child: Container(
        //         height:200 ,
        //         width: 200,
        //         decoration: BoxDecoration(
        //             color: Colors.indigo.shade300,
        //             borderRadius: BorderRadius.circular(10),
        //             boxShadow: const [
        //               BoxShadow(
        //                 blurRadius: 23,
        //               )
        //             ]
        //         ),
        //       ),
        //     ),
        //     Padding(
        //       padding: const EdgeInsets.all(8.0),
        //       child: Container(
        //         height:200 ,
        //         width: 200,
        //         decoration: BoxDecoration(
        //             color: Colors.indigo.shade300,
        //             borderRadius: BorderRadius.circular(10),
        //             boxShadow: const [
        //               BoxShadow(
        //                 blurRadius: 23,
        //               )
        //             ]
        //         ),
        //       ),
        //     ),
        //     Padding(
        //       padding: const EdgeInsets.all(8.0),
        //       child: Container(
        //         height:200 ,
        //         width: 200,
        //         decoration: BoxDecoration(
        //             color: Colors.indigo.shade300,
        //             borderRadius: BorderRadius.circular(10),
        //             boxShadow: const [
        //               BoxShadow(
        //                 blurRadius: 23,
        //               )
        //             ]
        //         ),
        //       ),
        //     ),
        //     Padding(
        //       padding: const EdgeInsets.all(8.0),
        //       child: Container(
        //         height:200 ,
        //         width: 200,
        //         decoration: BoxDecoration(
        //             color: Colors.indigo.shade300,
        //             borderRadius: BorderRadius.circular(10),
        //             boxShadow: const [
        //               BoxShadow(
        //                 blurRadius: 23,
        //               )
        //             ]
        //         ),
        //       ),
        //     ),
        //     Padding(
        //       padding: const EdgeInsets.all(8.0),
        //       child: Container(
        //         height:200 ,
        //         width: 200,
        //         decoration: BoxDecoration(
        //             color: Colors.indigo.shade300,
        //             borderRadius: BorderRadius.circular(10),
        //             boxShadow: const [
        //               BoxShadow(
        //                 blurRadius: 23,
        //               )
        //             ]
        //         ),
        //       ),
        //     ),
        //     Padding(
        //       padding: const EdgeInsets.all(8.0),
        //       child: Container(
        //         height:200 ,
        //         width: 200,
        //         decoration: BoxDecoration(
        //             color: Colors.indigo.shade300,
        //             borderRadius: BorderRadius.circular(10),
        //             boxShadow: const [
        //               BoxShadow(
        //                 blurRadius: 23,
        //               )
        //             ]
        //         ),
        //       ),
        //     ),
        //     Padding(
        //       padding: const EdgeInsets.all(8.0),
        //       child: Container(
        //         height:200 ,
        //         width: 200,
        //         decoration: BoxDecoration(
        //             color: Colors.indigo.shade300,
        //             borderRadius: BorderRadius.circular(10),
        //             boxShadow: const [
        //               BoxShadow(
        //                 blurRadius: 23,
        //               )
        //             ]
        //         ),
        //       ),
        //     ),
        //     Padding(
        //       padding: const EdgeInsets.all(8.0),
        //       child: Container(
        //         height:200 ,
        //         width: 200,
        //         decoration: BoxDecoration(
        //             color: Colors.indigo.shade300,
        //             borderRadius: BorderRadius.circular(10),
        //             boxShadow: const [
        //               BoxShadow(
        //                 blurRadius: 23,
        //               )
        //             ]
        //         ),
        //       ),
        //     ),
        //     Padding(
        //       padding: const EdgeInsets.all(8.0),
        //       child: Container(
        //         height:200 ,
        //         width: 200,
        //         decoration: BoxDecoration(
        //             color: Colors.indigo.shade300,
        //             borderRadius: BorderRadius.circular(10),
        //             boxShadow: const [
        //               BoxShadow(
        //                 blurRadius: 23,
        //               )
        //             ]
        //         ),
        //       ),
        //     ),
        //     Padding(
        //       padding: const EdgeInsets.all(8.0),
        //       child: Container(
        //         height:200 ,
        //         width: 200,
        //         decoration: BoxDecoration(
        //             color: Colors.indigo.shade300,
        //             borderRadius: BorderRadius.circular(10),
        //             boxShadow: const [
        //               BoxShadow(
        //                 blurRadius: 23,
        //               )
        //             ]
        //         ),
        //       ),
        //     ),
        //     Padding(
        //       padding: const EdgeInsets.all(8.0),
        //       child: Container(
        //         height:200 ,
        //         width: 200,
        //         decoration: BoxDecoration(
        //             color: Colors.indigo.shade300,
        //             borderRadius: BorderRadius.circular(10),
        //             boxShadow: const [
        //               BoxShadow(
        //                 blurRadius: 23,
        //               )
        //             ]
        //         ),
        //       ),
        //     ),
        //   ],
        // ),

        //this is list view builder
        // ListView.builder(itemBuilder: (context, index) {
        //   return Padding(
        //     padding: const EdgeInsets.all(8.0),
        //     child: Container(
        //       height: 200,
        //       width: 200,
        //       decoration: BoxDecoration(
        //         color: Colors.indigo.shade300,
        //         borderRadius: BorderRadius.circular(23),
        //         // border:Border.all(
        //         //   color: Colors.indigo,
        //         //   width: 5,
        //         // ),
        //         boxShadow: const [
        //           BoxShadow(
        //             blurRadius: 23,
        //           )
        //         ]
        //       ),
        //     ),
        //   );
        // },
        // itemCount: 30,
        //   scrollDirection: Axis.horizontal,
        // // itemExtent: 200,
        // )

        //this is list view separated

        ListView.separated(itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                  color: Colors.indigo.shade300,
                  borderRadius: BorderRadius.circular(23),
                  boxShadow: const [
                    BoxShadow(
                      blurRadius: 23,
                    )
                  ]
              ),
            ),
          );
        }, separatorBuilder: (context, index){
          return const Divider(thickness: 10,height: 5,color: Colors.amber,);
        },
          itemCount: 20,
        ),
      ),

    );
  }
}
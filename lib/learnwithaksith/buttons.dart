import 'package:flutter/material.dart';

class Buttonclass extends StatelessWidget {
  const Buttonclass({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 20,
          // backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          backgroundColor: Colors.red,
          title: Text("button tutorial"),
        ),
        body:
        //this is outline button
        // Center(
        //   child: OutlinedButton(
        //       child: const Text("outline button"),
        //       onPressed: (){
        //         print("outline button");
        //       },
        //       onLongPress: (){
        //         print("this is outline button");
        //       }
        //   ),
        // )
        //this is elevated button
        // Center(
        // child:ElevatedButton(
        //   style: ButtonStyle(
        //     backgroundColor:MaterialStateProperty.all(Theme.of(context).primaryColor),
        //       padding: MaterialStateProperty.all(EdgeInsets.all(30)),
        //       overlayColor: MaterialStateProperty.all(Colors.black),
        //       elevation : MaterialStateProperty.all(20),
        //     shape: MaterialStateProperty.all(RoundedRectangleBorder(
        //       borderRadius: BorderRadius.circular(40),))
        //   ),
        //   child: Text("elevated button",style:TextStyle(color:Colors.black)),
        //   onPressed: (){
        //     print("elevated button pressed");
        //   },
        //   onLongPress: (){
        //     print("this is elevated button");
        //   },
        // )
        // )

        //this is text button
        Center(
          child:  TextButton(
            style:ButtonStyle(
                padding: WidgetStateProperty.all(EdgeInsets.all(30)),
                overlayColor: WidgetStateProperty.all(Colors.black),
                elevation : WidgetStateProperty.all(20),
                // backgroundColor:WidgetStateProperty.all(Colors.yellow),
                shape: WidgetStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100),))
            ),
            child: Text("text button",style: TextStyle(color: Colors.red),),
            onPressed:(){
              print("this is text button");
            },
            onLongPress: (){
              print("this my text button");
            },
          ),
        )// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

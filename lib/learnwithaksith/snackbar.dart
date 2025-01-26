import 'package:flutter/material.dart';

class Snackbarwidght extends StatelessWidget{
  const Snackbarwidght({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Snack bar widget"),
        backgroundColor: Colors.red,
      ),
      body: Container(
          child:Center(
            child: ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: const WidgetStatePropertyAll(Colors.red),
                  elevation: WidgetStateProperty.all(20)
              ),
              onPressed: (){
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content:Text("This is a Snack bar widget"),
                  elevation: 30,
                  backgroundColor: Colors.red,
                  shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(20)),
                  dismissDirection: DismissDirection.startToEnd,
                  behavior: SnackBarBehavior.floating,
                  duration: Duration(seconds: 1),
                  action: SnackBarAction(label: "Undo", onPressed: (){}),
                ));
              },
              child: const Text("open Snack bar",style: TextStyle(color: Colors.black),),
            ),
          )
      ),
    );
  }
}

// var snackbar=SnackBar(content: const Text("This is a Snack bar widget"),
//   // padding: EdgeInsets.all(60),
//   backgroundColor: Colors.red,
//   elevation: 80,       //elevation is used for show the shadow
//   duration: const Duration(seconds: 3), //duration is give for the time period of show snackbar
//   behavior: SnackBarBehavior.floating,
//   shape: RoundedRectangleBorder(
//     borderRadius: BorderRadius.circular(20),
//   ),
//   action: SnackBarAction(label: "undo",
//       textColor: Colors.black,
//       onPressed:(){}),
// );
// ScaffoldMessenger.of(context).showSnackBar(snackbar);
// //this compalsory to call the scaffoldmessenger and showsnackbar(with in give the variable of snackbar)
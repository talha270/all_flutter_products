import 'package:flutter/material.dart';

class AlertBoxwidget extends StatelessWidget{
  const AlertBoxwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Alert box"),
        backgroundColor: Colors.red,
        elevation: 5,
      ),
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.red,
                elevation: 5
          ),
          onPressed: (){
            showalertbox(context);
          },
          child: const Text("alert box"),
        ),
      ),
    );
  }

showalertbox(BuildContext context) {
  return showDialog(context: context, builder: (context) {
    return AlertDialog(
      elevation: 20,
      // backgroundColor: Colors.red.shade200,
      // icon: Icon(Icons.ac_unit_sharp),
      title: Text("Alert Box"),
      shadowColor: Colors.black,
      scrollable: true,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      content: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("this is alert box"),
          Text("you are sure to cancel")
        ],
      ),
      actions: [
        TextButton(onPressed: (){}, child: const Text("Approved")),
        TextButton(onPressed: (){Navigator.pop(context);}, child: const Text("Canceled")),
      ],
    );
  },);
}
}

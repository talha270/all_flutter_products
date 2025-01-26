import 'package:flutter/material.dart';
class Buttomsheetwidget extends StatelessWidget{
  Buttomsheetwidget({super.key});
  final fruit =["apple","mango","banana","painaple","grapes"];
  final fruit1 =["healthy","king of fruit","full of calcium","healthy","best"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bottom sheet"),
        elevation: 30,
        backgroundColor: Colors.red,
      ),
      body:Center(
        child: ElevatedButton(
          onPressed: (){
            showModalBottomSheet(context: context, builder: (context) {
              return ListView.builder(itemBuilder: (context, index) => ListTile(
                title: Text(fruit[index]),
                subtitle: Text(fruit1[index]),
              ),
              itemCount: fruit.length,
              );
            },
            elevation: 30,
              // backgroundColor: Colors.red.shade100,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              // barrierColor: Colors.black,
              barrierLabel: "text",
              isDismissible: false,
              showDragHandle: true,
              enableDrag: false,

            );
          },
          child: Text("Bottom sheet"),
        ),
      )
    );
  }
}

// Center(
// child: ElevatedButton(
// onPressed: (){
// showModalBottomSheet(
// backgroundColor: Colors.red,
// elevation: 30,
// shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(23)),
// barrierColor: Colors.transparent,    //it is used for change the color of background thing
// isDismissible: false,
// enableDrag: true,
// context: context, builder: (context) {
// return ListView.builder(
// itemBuilder: (context, index) {
// return ListTile(
// title: Text(fruit[index]),
// subtitle: Text(fruit1[index]),
// );
// },
// itemCount: fruit.length,
// );
// },);
// },
// child: const Text("bottom sheet"),
// ),
// ),
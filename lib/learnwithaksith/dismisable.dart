import 'package:flutter/material.dart';
class Dismisablewidgets extends StatefulWidget{
  const Dismisablewidgets({super.key});

  @override
  State<Dismisablewidgets> createState() => _SnackbarwidghtState();
}

class _SnackbarwidghtState extends State<Dismisablewidgets> {
  var furid=["apple","banana","painless","watermelon"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Dismissible widgets"),
          backgroundColor: Colors.red,
        ),
        body:ListView.builder(
          itemCount: furid.length,
          itemBuilder: (context, index) => Dismissible(
            key: Key(furid[index]),
        child: Card(
          child: ListTile(
            title: Text(furid[index]),
            subtitle: Text(furid[index]),
          ),
        ),
         onDismissed: (direction) => direction==DismissDirection.startToEnd?
         ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(furid[index]),backgroundColor: Colors.red,)):
         ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(furid[index]),backgroundColor: Colors.green,)),
        background: Container(
          color: Colors.red,
          child: const Center(child: Icon(Icons.forward)),),
          secondaryBackground:  Container(
            color: Colors.green,
            child: const Center(child: Icon(Icons.replay)),),

          ),
        )
    );
  }
}
//
// ListView.builder(
// itemCount: furid.length,
// itemBuilder: (context,index){
// return Dismissible(
// onDismissed: (direction){
// if(direction==DismissDirection.startToEnd){
// ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(furid[index]),
// backgroundColor: Colors.red,
// ),);
// }
// else{
// ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(furid[index]),
// backgroundColor: Colors.green,
// ));
// }
// },
// background: Container(color: Colors.red,),
// secondaryBackground: Container(color: Colors.green,),
// key: Key(furid[index]),
// child:Card(
// child: ListTile(
// title: Text(furid[index]),
// subtitle: Text(furid[index]),
// ),
// )
// );
// },
// )
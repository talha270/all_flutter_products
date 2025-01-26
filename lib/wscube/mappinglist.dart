import 'package:flutter/material.dart';

class Mappinglist extends StatelessWidget{
  Mappinglist({super.key});
  final mapoflist=[
    {
      "name": "muhammadtalha",
      "phoneno": "4542354354",
      "marks": "99",
    },
    {
      "name": "muhammadtalha",
      "phoneno": "454235435435",
      "marks": "99",
    },
    {
      "name": "muhammadtalha",
      "phoneno": "454235435435",
      "marks": "99",
    },
    {
      "name": "muhammadtalha",
      "phoneno": "454235435435",
      "marks": "99",
    },
    {
      "name": "muhammadtalha",
      "phoneno": "454235435435",
      "marks": "99",
    },
    {
      "name": "muhammadtalha",
      "phoneno": "454235435435",
      "marks": "99",
    },
    {
      "name": "muhammadtalha",
      "phoneno": "454235435435",
      "marks": "99",
    },
    {
      "name": "muhammadtalha",
      "phoneno": "454235435435",
      "marks": "99",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amberAccent.shade100,
        title: const Text("mapping list"),
      ),
      drawer: const Drawer(),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: ListView(
          children:
          // mapoflist.map((value){
          //   return Card(
          //     color: Colors.orange.shade200,
          //     elevation: 10,
          //     child: Padding(
          //       padding: const EdgeInsets.only(top: 8),
          //       child: ListTile(
          //         leading: const Icon(Icons.account_circle),
          //         title: Text(value["name"].toString()),
          //         subtitle: Text(value["phoneno"].toString()),
          //         trailing: CircleAvatar(
          //             backgroundColor: Colors.orange.shade100,
          //             child:Text(value["marks"].toString())),
          //       ),
          //     ),
          //   );
          // } ).toList(),
          mapoflist.map((value)=>Card(
            elevation: 10,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                leading: Icon(Icons.person),
                title: Text(value["name"].toString()),
                subtitle: Text(value["phoneno"].toString()),
                trailing: CircleAvatar(child: Text(value["marks"].toString()),),
              ),
            ),
          )).toList(),
        ),
      ),
    );
  }
}
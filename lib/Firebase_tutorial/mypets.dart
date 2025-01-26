import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Mypets extends StatefulWidget {
  const Mypets({super.key});

  @override
  State<Mypets> createState() => _MypetsState();
}

class _MypetsState extends State<Mypets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My pets"),
        backgroundColor: Colors.red,
      ),
      body: Container(
        margin: const EdgeInsets.all(20),
        child: StreamBuilder<QuerySnapshot>(
            stream: FirebaseFirestore.instance.collection("pets").snapshots(),
            builder: (context, snapshot) {
              if(snapshot.connectionState==ConnectionState.waiting){
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
              else{
                final petdata=snapshot.data!.docs;
                return ListView.builder(
                  itemCount: petdata.length,
                  itemBuilder: (context, index) => Card(
                    elevation: 20,
                    child: ListTile(
                    title: Text(petdata[index]["name"]),
                    subtitle: Text(petdata[index]["animal"]),
                                    ),
                  ),);
              }
            },),
      ),
    );
  }
}

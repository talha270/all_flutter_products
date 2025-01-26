import 'package:all_flutter_tutorial/Firebase_tutorial/mypets.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'Functions/databasefunction.dart';

class DatabaseCrud extends StatefulWidget {
  const DatabaseCrud({super.key});

  @override
  State<DatabaseCrud> createState() => _DatabaseCrudState();
}

class _DatabaseCrudState extends State<DatabaseCrud> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Crud Operations"),
        backgroundColor: Colors.red,
        elevation: 5,
        actions: [
          IconButton(onPressed: (){
            FirebaseAuth.instance.signOut();
          },
              icon: const Icon(Icons.leave_bags_at_home))
        ],
      ),
      body: Center(
        child: Container(
          margin: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: (){
                create(colname: "pets", docname: "bully", name: "tom", animal: "cat", age: 5);
              }, child: const Text("Create")),
              ElevatedButton(onPressed: (){
                update(colname: "pets", docname: "kitty",field: "age",newvalue: 20);
              }, child: const Text("Update")),
              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => const Mypets(),));
              }, child: const Text("Retrieve")),
              ElevatedButton(onPressed: (){
                delete(colname: "pets", docname: "kitty");
              }, child: const Text("Delete")),
            ],
          ),
        ),
      ),
    );
  }
}


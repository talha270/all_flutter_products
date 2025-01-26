import 'package:flutter/material.dart';
void main()
{
  runApp(const CardWidget());
}
class CardWidget extends StatelessWidget{
  const CardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "test app",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: const Homepage(),
    );
  }
}

class Homepage extends StatelessWidget{
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Padding(
          padding: EdgeInsets.only(bottom: 12,left: 10),
          child: Text ("Contacts",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 23,fontStyle: FontStyle.italic),),
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.indigo.shade50,
        child: ListView.builder(itemBuilder: (context, index) {
          return Card(
            elevation: 30,
            shadowColor: Colors.indigo,
            child: Padding(
              padding: const EdgeInsets.only(top: 12),
              child: ListTile(
                leading: const CircleAvatar(

                  backgroundImage: AssetImage("assets/images/12.jpg"),
                ),
                title: Text("person ${index+1}",style: const TextStyle(fontStyle: FontStyle.italic),),
                subtitle:const Text("phone number",style: TextStyle(fontStyle: FontStyle.italic),),
                trailing:const Icon(Icons.account_circle_outlined),
              ),
            ),
          );
        },
          // itemCount: 30,
        ),
      ),
    );
  }
}
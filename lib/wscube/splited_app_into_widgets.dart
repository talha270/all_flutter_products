import 'package:flutter/material.dart';

class SplitedAppIntoWidgets extends StatelessWidget{
  const SplitedAppIntoWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("splitted the app into weight"),
      ),
      drawer: const Drawer(),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.indigo.shade200,

        child: const SingleChildScrollView(
          child: Column(
            children: [
              Homeitem1(),
              Homeitem2(),
              Homeitem3(),
              Homeitem4(),
            ],
          ),
        ),
      ),
    );
  }
}



class Homeitem1 extends StatelessWidget{
  const Homeitem1({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(top: 5,bottom: 5),
      child: Container(
        height: 150,
        decoration: BoxDecoration(
            color: Colors.indigo.shade400,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: Colors.indigo.shade900,
              width: 1,
            ),
            boxShadow: const [
              BoxShadow(
                  blurRadius: 20,
                  spreadRadius: 5,
                  blurStyle: BlurStyle.normal
              ),
            ]
        ),
        child:
        ListView.builder(itemBuilder: (context, index) {
          return  const Padding(
            padding: EdgeInsets.all(8.0),
            child: SizedBox(
              width: 90,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      backgroundColor: Colors.indigo,
                      radius: 40,
                      backgroundImage: AssetImage("assets/images/12.jpg"),
                    ),
                  ),
                  Text("names",style: TextStyle(fontSize: 20),),
                ],
              ),
            ),
          );
        },
          scrollDirection: Axis.horizontal,
          // itemExtent: 100,
        ),
      ),
    );
  }
}
class Homeitem2 extends StatelessWidget{
  const Homeitem2({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(5),
      child: Container(
        height: 300,
        decoration: BoxDecoration(
            color: Colors.indigo.shade400,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
                width: 1,
                color: Colors.indigo.shade900
            ),
            boxShadow: const[
              BoxShadow(
                  blurRadius: 20,
                  spreadRadius: 5,
                  blurStyle: BlurStyle.normal
              )
            ]
        ),
        child: ListView.builder(itemBuilder:(context, index) => const ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage("assets/images/12.jpg"),
          ),
          title: Text("name of person"),
          subtitle:Text("phone number"),
          trailing: Icon(Icons.add),
        ),),
      ),
    );
  }
}
class Homeitem3 extends StatelessWidget{
  const Homeitem3({super.key});

  @override
  Widget build(BuildContext context) {
    return    Padding(
      padding: const EdgeInsets.all(5),
      child: Container(
        height: 130,
        decoration: BoxDecoration(
            color: Colors.indigo.shade400,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: Colors.indigo.shade900,
              width: 1,
            ),
            boxShadow: const[
              BoxShadow(
                blurRadius: 20,
                spreadRadius: 5,
              )
            ]
        ),
        child: ListView.builder(itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(height: 100,width: 100,color: Colors.indigo.shade500,),
        ),
          scrollDirection: Axis.horizontal,
        ),
      ),
    );
  }
}
class Homeitem4 extends StatelessWidget {
  const Homeitem4({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        height: 200,
        decoration: BoxDecoration(
            color: Colors.indigo.shade400,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: Colors.indigo.shade900,
              width: 1,
            ),
            boxShadow: const [
              BoxShadow(
                blurRadius: 20,
                spreadRadius: 5,
              )
            ]
        ),

      ),
    );
  }
}
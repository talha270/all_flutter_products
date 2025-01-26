import 'package:flutter/material.dart';

void main() {
  runApp(const ContainerWidget());
}

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.red
      ),
      home: _MyHomePage(),
    );
  }
}

class _MyHomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("flutter app"),
        backgroundColor: Colors.blue,
      ),
      body:Center(
        child: Container(
          height: double.infinity,
          width:double.infinity,
          color: Colors.amberAccent,
          child: Center(
            child: InkWell(
              onTap: (){
                print("on tap");
              },
              child: Container(
                height: 350,
                width: 350,
                decoration: BoxDecoration(
                  color: Colors.indigo,
                  // borderRadius:
                  // BorderRadius.circular(21),
                  // BorderRadius.only(topLeft: Radius.circular(23),bottomRight: Radius.circular(23)),
                  // const BorderRadius.all(Radius.circular(75)),
                  border: Border.all(
                    color: Colors.red,
                    width: 6,

                  ),
                  boxShadow:const [
                    BoxShadow(
                        blurRadius: 34,
                        spreadRadius: 23,
                        color: Colors.red
                    )
                  ],
                  shape: BoxShape.circle,
                ),

                child:  const Center(
                  child:Text("this is the flutter",style: TextStyle(
                    fontSize: 34,
                    color: Colors.brown,
                    fontWeight: FontWeight.bold,
                    backgroundColor: Colors.deepPurple,
                  ),),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}


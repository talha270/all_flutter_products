import 'package:flutter/material.dart';

void main() {
  runApp(const Buttons());
}

class Buttons extends StatelessWidget {
  const Buttons({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        //this is elevated button
        body:
            Center(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              minimumSize: const Size(170, 40),
              backgroundColor: Colors.green,
            ),
            child: const Text("elevated button"),
            onPressed: (){
              print("elevated button");
            },
            onLongPress: (){
              print("this is elevated button");
            },
          ),

        //this is text button
        // Center(
        //   child:  TextButton(
        //     style: TextButton.styleFrom(
        //       minimumSize: const Size(1,3),
        //     ),
        //     child: Text("text button",style: TextStyle(color: Colors.red),),
        //     onPressed:(){
        //       print("this is text button");
        //     },
        //     onLongPress: (){
        //       print("this my text button");
        //     },
        //   ),
        // // )// This trailing comma makes auto-formatting nicer for build methods.
        )
    );
  }
}

import 'package:all_flutter_tutorial/responsive/desktoplayout.dart';
import 'package:all_flutter_tutorial/responsive/mobilelayout.dart';
import 'package:all_flutter_tutorial/responsive/responsivelayout.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(const Myapp());
}
class Myapp extends StatelessWidget{
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "For practice",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.deepPurple
      ),
      home: const Homepage(),
    );
  }
}

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      // final curentwidh= MediaQuery.of(context).size.width;   //this is used for check current width
      // backgroundColor: curentwidh<600? Colors.greenAccent:Colors.red,
      body: Responsivelayout(mobilebody: Mobilebody(), desktopbody: Desktopbody(),),
    );
  }
}
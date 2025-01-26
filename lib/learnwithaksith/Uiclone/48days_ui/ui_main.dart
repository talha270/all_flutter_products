import 'package:flutter/material.dart';

import 'pages/home.dart';

void main()=> runApp(const Myapp());
class Myapp extends StatelessWidget{
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Simple ui",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
        brightness: Brightness.light
      ),
      home: const Home(),
    );
  }
}
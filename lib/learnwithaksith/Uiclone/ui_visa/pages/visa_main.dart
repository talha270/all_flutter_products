import 'package:flutter/material.dart';

import '../utilites/colors.dart';
import 'home.dart';

void main()=>runApp(const Visaapp());
class Visaapp extends StatelessWidget{
  const Visaapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Tcolors.bgcolor,
        brightness: Brightness.light
      ),
      home:const Home()
    );
  }
}

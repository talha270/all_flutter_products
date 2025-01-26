import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import 'apps/calculatorapp/homescreen.dart';
import 'apps/icecreamapp/viewpage.dart';
void main(){
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  // WidgetsFlutterBinding.ensureInitialized();
  runApp(const Myapp());
}
class Myapp extends StatelessWidget{
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "learn with codepur",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.red,
          fontFamily: GoogleFonts.dmSans().fontFamily
      ),
      themeMode: ThemeMode.system,
      home: const Homescreen(),
    );
  }
}

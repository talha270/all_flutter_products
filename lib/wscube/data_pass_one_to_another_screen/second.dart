import 'package:flutter/material.dart';
class Secondpage extends StatelessWidget{
  const Secondpage(this.text, {super.key});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          children: [
            Icon(Icons.account_balance),
            Text("Second page"),
          ],
        ),
      ),
      body: Center(child: Text("welcome, $text",style: const TextStyle(fontSize: 23,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic ),)),
    );
  }
}
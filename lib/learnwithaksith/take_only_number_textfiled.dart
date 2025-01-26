import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TakeOnlyNumberTextfiled extends StatefulWidget {
  const TakeOnlyNumberTextfiled({super.key});

  @override
  State<TakeOnlyNumberTextfiled> createState() => _TakeOnlyNumberTextfiledState();
}

class _TakeOnlyNumberTextfiledState extends State<TakeOnlyNumberTextfiled> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("take only number textfiled"),
        centerTitle: true,
        elevation: 20,
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.all(20),
          child: TextField(
            keyboardType: TextInputType.number,
            inputFormatters: <TextInputFormatter>[
              // FilteringTextInputFormatter.allow(RegExp('r[0-9]')),
              FilteringTextInputFormatter.digitsOnly,
            ],
          ),
        ),
      ),
    );
  }
}
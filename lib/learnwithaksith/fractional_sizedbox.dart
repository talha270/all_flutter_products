import 'package:flutter/material.dart';

class FractionalSizedbox extends StatelessWidget {
  const FractionalSizedbox({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        // Center gives bounded constraints, safe for FractionallySizedBox
        child: FractionallySizedBox(
          widthFactor: 0.8,
          heightFactor: 0.4,
          child: Container(
            color: Colors.green,
            child: const Center(
              child: Text(
                "Hello",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

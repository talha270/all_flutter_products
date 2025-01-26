import 'package:flutter/material.dart';

class Repaintboundry extends StatelessWidget {
  const Repaintboundry({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('RepaintBoundary Example')),
        body: Center(
          child: RepaintBoundary(
            child: Container(
              width: 200,
              height: 200,
              color: Colors.blue,
              child: Center(
                child: Text(
                  'Hello!',
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              ),
            ),
          ),
        ),
      );
  }
}

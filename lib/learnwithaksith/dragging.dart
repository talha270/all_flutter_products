import 'package:flutter/material.dart';

class DragAndDropExample extends StatefulWidget {
  @override
  _DragAndDropExampleState createState() => _DragAndDropExampleState();
}

class _DragAndDropExampleState extends State<DragAndDropExample> {
  String droppedItem = "Drop Here";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Draggable & DragTarget Example'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Draggable Widget
          Draggable<String>(
            data: 'Dragged Item',
            feedback: Container(
              color: Colors.red,
              width: 100,
              height: 100,
              child: Center(
                child: Text(
                  'Dragging',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ),
            child: Container(
              color: Colors.blue,
              width: 100,
              height: 100,
              child: Center(
                child: Text(
                  'Drag me',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ),
            childWhenDragging: Container(
              color: Colors.grey,
              width: 100,
              height: 100,
              child: Center(
                child: Text(
                  'Being dragged',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ),
          ),
          SizedBox(height: 50),
          // DragTarget Area
          DragTarget<String>(
            onAcceptWithDetails: (data) {
              setState(() {
                droppedItem = "Dropped: $data";
              });
            },
            builder: (context, candidateData, rejectedData) {
              return Container(
                color: candidateData.isEmpty ? Colors.green : Colors.orange,
                width: 200,
                height: 100,
                child: Center(
                  child: Text(
                    candidateData.isEmpty ? droppedItem : "Drop here!",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

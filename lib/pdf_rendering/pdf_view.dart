import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FloorSelectionScreen(),
    );
  }
}

class FloorSelectionScreen extends StatelessWidget {
  final List<String> floors = ['8', '7', '6', '5', '4', '3', '2', '1', 'L', 'B1', 'B2'];
  final List<String> banks = ['Bank 1', 'Bank 2', 'Bank 3', 'Bank 4'];
  final Map<String, String> specialFloors = {
    'L': 'H52, H53',
    'B1': 'H52, H53',
    'B2': 'H52, H53',
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Floor Selection")),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Table(
            border: TableBorder.all(color: Colors.grey),
            columnWidths: const {
              0: FlexColumnWidth(1.5),
              1: FlexColumnWidth(1),
              2: FlexColumnWidth(1),
              3: FlexColumnWidth(1),
              4: FlexColumnWidth(1),
            },
            children: [
              // Header Row
              TableRow(
                decoration: BoxDecoration(color: Colors.grey[300]),
                children: [
                  headerCell("Floors"),
                  for (var bank in banks) headerCell(bank),
                ],
              ),
              // Floor Rows
              for (var floor in floors)
                TableRow(
                  children: [
                    textCell(floor),
                    for (var i = 0; i < banks.length; i++)
                      specialFloors.containsKey(floor)
                          ? textCell(specialFloors[floor]!)
                          : buttonCell(),
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }

  Widget headerCell(String text) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Text(
          text,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  Widget textCell(String text) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Text(text),
      ),
    );
  }

  Widget buttonCell() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(shape: CircleBorder()),
          child: Icon(Icons.add, size: 16),
        ),
      ),
    );
  }
}

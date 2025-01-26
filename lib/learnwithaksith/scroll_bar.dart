import 'package:flutter/material.dart';

class ScrollBarExample extends StatelessWidget {
  const ScrollBarExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("dfljaifejfs"),
      ),
      body: Scrollbar(
        thumbVisibility: true, // Makes the scroll bar visible
        // child:
        // ListView.builder(
        //   itemCount: 50,
        //   itemBuilder: (context, index) {
        //     return ListTile(
        //       title: Text('Item $index'),
        //     );
        //   },
        // ),
        thickness: 8.0,
        trackVisibility: true,
        interactive: true,
          notificationPredicate: (notification) => notification.depth == 0,
        radius: const Radius.circular(20.0),
        child: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              children: List.generate(100, (index) => Text('Item $index')),
            ),
          ),
        ),
      )
    );
  }
}

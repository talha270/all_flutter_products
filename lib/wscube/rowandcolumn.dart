import 'package:flutter/material.dart';

class Rowandcolumn extends StatelessWidget{
  const Rowandcolumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("row and column"),
        elevation: 10,
        shadowColor: Colors.black,
      ),
      body:SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: SizedBox(
          height: 800,
          child: Center(
            child: Row(
              // crossAxisAlignment: CrossAxisAlignment.center,
              // mainAxisAlignment: MainAxisAlignment.end,
              // mainAxisAlignment: MainAxisAlignment.spaceAround,
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              // verticalDirection: VerticalDirection.up,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 100,
                    width: 200,
                    color: Colors.indigo.shade100,
                    child: const Center(child: Text("Column",style: TextStyle(fontSize: 23,color: Colors.red),)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 100,
                    width: 200,
                    color: Colors.indigo.shade100,
                    child: const Center(child: Text("Column",style: TextStyle(fontSize: 23,color: Colors.red),)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 100,
                    width: 200,
                    color: Colors.indigo.shade100,
                    child: const Center(child: Text("Column",style: TextStyle(fontSize: 23,color: Colors.red),)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 100,
                    width: 200,
                    color: Colors.indigo.shade100,
                    child: const Center(child: Text("Column",style: TextStyle(fontSize: 23,color: Colors.red),)),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

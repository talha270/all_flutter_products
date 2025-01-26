import 'package:flutter/material.dart';

class Scrollviewwidget extends StatelessWidget{
  const Scrollviewwidget({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          title:const Text("Home page"),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: Text("Horizontal scroll",style: TextStyle(color: Colors.red,fontSize: 23)),
                  ),
                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.indigo.shade100,
                            borderRadius: BorderRadius.circular(10)
                        ),
                        height: 100,
                        width: 200,
                        child: const Center(child: Text("horizontal",style: TextStyle(fontSize: 23,color: Colors.red),)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 100,
                        width: 200,
                        color: Colors.indigo.shade100,
                        child: const Center(child: Text("horizontal",style: TextStyle(fontSize: 23,color: Colors.red),)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 100,
                        width: 200,
                        color: Colors.indigo.shade100,
                        child: const Center(child: Text("horizontal",style: TextStyle(fontSize: 23,color: Colors.red),)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 100,
                        width: 200,
                        color: Colors.indigo.shade100,
                        child: const Center(child: Text("horizontal",style: TextStyle(fontSize: 23,color: Colors.red),)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 100,
                        width: 200,
                        color: Colors.indigo.shade100,
                        child: const Center(child: Text("horizontal",style: TextStyle(fontSize: 23,color: Colors.red),)),
                      ),
                    ),            Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 100,
                        width: 200,
                        color: Colors.indigo.shade100,
                        child: const Center(child: Text("horizontal",style: TextStyle(fontSize: 23,color: Colors.red),)),
                      ),
                    ),            Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 100,
                        width: 200,
                        color: Colors.indigo.shade100,
                        child: const Center(child: Text("horizontal",style: TextStyle(fontSize: 23,color: Colors.red),)),
                      ),
                    ),            Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 100,
                        width: 200,
                        color: Colors.indigo.shade100,
                        child: const Center(child: Text("horizontal",style: TextStyle(fontSize: 23,color: Colors.red),)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 100,
                        width: 200,
                        color: Colors.indigo.shade100,
                        child: const Center(child: Text("horizontal",style: TextStyle(fontSize: 23,color: Colors.red),)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 100,
                        width: 200,
                        color: Colors.indigo.shade100,
                        child: const Center(child: Text("horizontal",style: TextStyle(fontSize: 23,color: Colors.red),)),
                      ),
                    ),            Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 100,
                        width: 200,
                        color: Colors.indigo.shade100,
                        child: const Center(child: Text("horizontal",style: TextStyle(fontSize: 23,color: Colors.red),)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 100,
                        width: 200,
                        color: Colors.indigo.shade100,
                        child: const Center(child: Text("horizontal",style: TextStyle(fontSize: 23,color: Colors.red),)),
                      ),
                    ),
                  ],
                ),
              ),
              const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("Vertical scroll", style: TextStyle( fontSize: 23,color: Colors.red)),
                  ),
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 150,
                      width: 300,
                      decoration: BoxDecoration(
                        color: Colors.indigo.shade100,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Center(child: Text("vertical",style: TextStyle(fontSize: 23,color: Colors.red),)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 150,
                      width: 300,
                      decoration: BoxDecoration(
                        color: Colors.indigo.shade100,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Center(child: Text("vertical",style: TextStyle(fontSize: 23,color: Colors.red),)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 150,
                      width: 300,
                      decoration: BoxDecoration(
                        color: Colors.indigo.shade100,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Center(child: Text("vertical",style: TextStyle(fontSize: 23,color: Colors.red),)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 150,
                      width: 300,
                      decoration: BoxDecoration(
                        color: Colors.indigo.shade100,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Center(child: Text("vertical",style: TextStyle(fontSize: 23,color: Colors.red),)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 150,
                      width: 300,
                      decoration: BoxDecoration(
                        color: Colors.indigo.shade100,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Center(child: Text("vertical",style: TextStyle(fontSize: 23,color: Colors.red),)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 150,
                      width: 300,
                      decoration: BoxDecoration(
                        color: Colors.indigo.shade100,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Center(child: Text("vertical",style: TextStyle(fontSize: 23,color: Colors.red),)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 150,
                      width: 300,
                      decoration: BoxDecoration(
                        color: Colors.indigo.shade100,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Center(child: Text("vertical",style: TextStyle(fontSize: 23,color: Colors.red),)),
                    ),
                  ),
                ],
              )
            ],
          ),
        )
    );
  }
}
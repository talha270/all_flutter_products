import 'package:flutter/material.dart';

class statefull extends StatefulWidget{
  const statefull({super.key});
  @override
  State<statefull> createState() => Homepagestate();
}
class Homepagestate extends State<statefull>{
  var Counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("stateful widget"),
      ),
      drawer: const Drawer(),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.lime.shade100,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("COUTER :$Counter",style:const TextStyle(fontSize: 23,fontStyle: FontStyle.italic,fontWeight: FontWeight.bold),),
            ElevatedButton(onPressed: (){
              setState(() {
                Counter++;
              });
            }, child:const Text("increment",style: TextStyle(fontWeight: FontWeight.bold,fontStyle: FontStyle.italic,fontSize: 25),)),
          ],
        ),
      ),
    );
  }

}
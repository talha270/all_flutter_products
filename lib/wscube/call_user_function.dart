import 'package:flutter/material.dart';
void main(){
  runApp(const CallUserFunction());
}
class CallUserFunction extends StatelessWidget{
  const CallUserFunction({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "call back function",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.red
      ),
      home: const Homepage(),
    );
  }
}
class Homepage extends StatelessWidget{
  const Homepage({super.key});
  callback(){
    print("clicked!!!!!");
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Call back function"),
      ),
      drawer:const Drawer(),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.red.shade100,
        child: Center(
            child: ElevatedButton(
              onPressed: () {
                callback();
              },
              child:const Text("click me!!"),)),
      ),
    );
  }
}
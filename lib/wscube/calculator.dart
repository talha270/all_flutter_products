import 'package:flutter/material.dart';
class Calculator extends StatelessWidget{
  const Calculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "basic calculator",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.lime
      ),
      home: const Homepage(),
    );
  }
}
class Homepage extends StatefulWidget{
  const Homepage({super.key});

  @override
  State <Homepage> createState() => Homepagestate();
}
class Homepagestate extends State<Homepage>{
  var no1controller= TextEditingController();
  var no2controller= TextEditingController();
  var result="";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Basic calculator"),
      ),
      drawer: const Drawer(),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.lime.shade50,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Basic Calculator",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: 350,
                child: TextField(
                  controller: no1controller,
                  keyboardType: TextInputType.number,
                  decoration:  InputDecoration(
                    prefixIcon: const Icon(Icons.numbers,color: Colors.black54,),
                    hintText: "enter the number",
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                        color: Colors.black54,
                        width: 3,
                        style:BorderStyle.solid,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                        color: Colors.black54,
                        width: 2,
                        style:BorderStyle.solid,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 350,
              child: TextField(
                controller: no2controller,
                keyboardType: TextInputType.number,
                decoration:  InputDecoration(
                  prefixIcon: const Icon(Icons.numbers,color: Colors.black54,),
                  hintText: "enter the number",
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                        color: Colors.black54,
                        width: 4,
                        style:BorderStyle.solid,
                      )
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      color: Colors.black54,
                      width: 2,
                      style:BorderStyle.solid,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15,left: 20),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                        onPressed: (){
                          var no1=int.parse(no1controller.text.toString());
                          var no2=int.parse(no2controller.text.toString());
                          var times=no2+no1;
                          setState(() {
                          result="RESULT : $times";

                          });
                        },
                        child:const Text("ADD",style: TextStyle(fontStyle:FontStyle.italic,fontSize: 20,fontWeight: FontWeight.bold),)),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                          onPressed: (){
                            var no1=int.parse(no1controller.text.toString());
                            var no2=int.parse(no2controller.text.toString());
                            var times=no1-no2;
                            result ="RESULT : $times";
                            setState(() {

                            });
                          },
                          child:const Text("SUB",style: TextStyle(fontStyle:FontStyle.italic,fontSize: 20,fontWeight: FontWeight.bold),)),
                    ),
                    ElevatedButton(
                        onPressed: (){
                          var no1=int.parse(no1controller.text.toString());
                          var no2 = int.parse(no2controller.text.toString());
                          var times=no1*no2;
                          result ="RESULT : $times";
                          setState(() {

                          });
                        },
                        child:const Text("MULTI",style: TextStyle(fontStyle:FontStyle.italic,fontSize: 20,fontWeight: FontWeight.bold),)),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                          onPressed: (){
                            var no1 =int.parse(no1controller.text.toString());
                            var no2 =int.parse(no2controller.text.toString());
                            var times=no1/no2;
                            result ="RESULT : $times";
                            setState(() {

                            });
                          },
                          child:const Text("DIVIDE",style: TextStyle(fontStyle:FontStyle.italic,fontSize: 20,fontWeight: FontWeight.bold),)),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10,left: 20),
              child: Container(
                color: Colors.lime,
                child: Text(" $result",style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 30,fontStyle: FontStyle.italic),),
              ),
            )
          ],
        ),
      ),
    );

  }
}
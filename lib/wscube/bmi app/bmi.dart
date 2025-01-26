import 'package:all_flutter_tutorial/wscube/bmi%20app/splash.dart';
import 'package:flutter/material.dart';

class Bmi extends StatelessWidget{
  const Bmi({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "BMI APP",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.indigo
      ),
      home: const Splashscreen(),
    ) ;
  }
}
class Homepage extends StatefulWidget{

  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {

  final wtcontroller = TextEditingController();

  final ftcontroller = TextEditingController();

  final inccontroller = TextEditingController();
  var result="";
  var bgcolor=Colors.indigo.shade200;
  var message="";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: 900,
          color: bgcolor,
          child: Column(
            children: [
              Container(
                height: 100,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.indigoAccent,
                    borderRadius:const BorderRadius.only(bottomRight: Radius.circular(60)),
                    border: Border.all(
                        color: Colors.black,
                        width: 1
                    ),
                    boxShadow:const[
                      BoxShadow(
                        color: Colors.black,
                        blurRadius: 23,
                        // spreadRadius: 23
                      )
                    ]
                ),
                child: const Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 10,top: 20),
                      child: Icon(Icons.account_balance),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20,top: 20),
                      child: Text("BMI APP",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 150,
              ),
              const Text("BMI app",style: TextStyle(
                  fontSize: 34,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic),),
              const SizedBox(height: 10,),
              SizedBox(
                width: 370,
                child: Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: TextField(
                    keyboardType: TextInputType.number,
                    controller: wtcontroller,
                    decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.line_weight),
                        // label: Text("enter the weight of body."),
                        // labelStyle: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
                        hintText:"enter the weight of body.",
                        hintStyle: const TextStyle(fontWeight: FontWeight.bold),
                        border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(23)),
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: const BorderSide(
                              color: Colors.black,
                              width: 2,
                            )
                        )
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: 370,
                child: TextField(
                  keyboardType: TextInputType.number,
                  controller: ftcontroller,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.line_weight),
                    // label: Text("enter the weight of body."),
                    // labelStyle: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
                    hintText:"enter the height of body in feet.",
                    hintStyle: const TextStyle(fontWeight: FontWeight.bold),
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(23)),
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: const BorderSide(
                          color: Colors.black,
                          width: 2,
                        )
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10,),
              SizedBox(
                width: 370,
                child: TextField(
                  keyboardType: TextInputType.number,
                  controller: inccontroller,
                  decoration:InputDecoration(
                    prefixIcon: const Icon(Icons.line_weight),
                    // label: Text("enter the weight of body."),
                    // labelStyle: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
                    hintText:"enter the height of body in inches.",
                    hintStyle: const TextStyle(fontWeight: FontWeight.bold),
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(23)),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.black,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10,bottom: 10),
                child: ElevatedButton(
                    onPressed: (){
                      var wt=wtcontroller.text.toString();
                      var ft=ftcontroller.text.toString();
                      var inch=inccontroller.text.toString();
                      if(wt!=""&&ft!=""&&inch!=""){
                        var iwt =int.parse(wt);
                        var ift=int.parse(ft);
                        var iinch=int.parse(inch);
                        var totalinches=(ift*12)+iinch;
                        var totalcm=totalinches*2.54;
                        var totalmeter=totalcm/100;
                        var bmi=iwt/(totalmeter*totalmeter);
                        if(bmi>25){
                          bgcolor=Colors.red;
                          message="you are overweight";
                        }else if(bmi<18){
                          bgcolor=Colors.blueGrey;
                          message="you are underweight";
                        }else{
                          bgcolor=Colors.greenAccent;
                          message="you are healthy";
                        }
                        setState(() {
                          // result="your BMI is : ${bmi.round()}";
                          result="your BMI is : ${bmi.toStringAsFixed(2)}";
                        });
                      }else{
                        setState(() {
                          result="please fill all the boxes";
                        });
                      }
                    },
                    child: const Text("Calculate",style: TextStyle(fontSize: 23,fontStyle: FontStyle.italic),)),
              ),
              Text("$message \n $result",style: const TextStyle(fontSize: 30,fontStyle: FontStyle.italic,fontWeight: FontWeight.bold),),
            ],
          ),
        ),
      ),
    );
  }
}
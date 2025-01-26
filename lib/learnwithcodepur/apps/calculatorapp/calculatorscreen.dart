import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Calculatorscreen extends StatefulWidget{
  const Calculatorscreen({super.key});

  @override
  State<Calculatorscreen> createState() => Calculatorscreenstate();
}
class Calculatorscreenstate extends State<Calculatorscreen>{
  num z=0;
final controllerone=TextEditingController();
final controllertwo=TextEditingController();
// late final AppLifecycleListener _listener;
@override
  void initState() {

    super.initState();
    // _listener= AppLifecycleListener(
    //   onHide: _onhide,
    //   onShow: _onshow,
    //   onDetach: _ondetach,
    //   onInactive: _oninactive,
    //   onRestart: _onrestart,
    //   onPause: _onpause,
    //   onResume: _onresume,
    //   onStateChange: _onstatechange,
    // );
}
  // void _onhide()=> print("onhide called.");
  // void _onshow()=> print("onshow called.");
  // void _ondetach()=> print("ondetach called.");
  // void _oninactive()=> print("oninactive called.");
  // void _onrestart()=> print("onrestart called");
  // void _onpause()=> print("onpause called.");
  // void _onresume()=> print("onresume called.");
  // void _onstatechange(AppLifecycleState state) {
  //   print("onstatechange called with state $state.");
  // }
  @override
  void dispose() {
  super.dispose();
  controllerone.dispose();
  controllertwo.dispose();
  // _listener.dispose();
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Calculator"),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.teal.shade200,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Textbutton(hint: "Enter the first value.", controller: controllerone),
            ),
            const SizedBox(height: 10,),
            Textbutton(hint: "Enter the second value.", controller: controllertwo),
            const SizedBox(height: 20,),
            Text(
              z.toString(),
              style: const TextStyle(
                fontSize: 80,fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold
              ),
            ),
          const SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              FloatingActionButton(
                key: const Key("add"),
                onPressed: (){
                  var x =int.parse(controllerone.text.toString());
                  var y=int.parse(controllertwo.text.toString());
                  setState(() {
                    z=x+y;
                  });
                },
                child: const Icon(Icons.add),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: FloatingActionButton(
                  onPressed: (){
                    var x =int.parse(controllerone.text.toString());
                    var y=int.parse(controllertwo.text.toString());
                    setState(() {
                      z=x-y;
                    });
                  },
                  child: const Icon(CupertinoIcons.minus),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: FloatingActionButton(
                  onPressed: (){
                    var x =int.parse(controllerone.text.toString());
                    var y=int.parse(controllertwo.text.toString());
                    setState(() {
                      z=x*y;
                    });
                  },
                  child: const Icon(CupertinoIcons.multiply),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: FloatingActionButton(
                  onPressed: (){
                    var x =int.parse(controllerone.text.toString());
                    var y=int.parse(controllertwo.text.toString());
                    setState(() {
                      z=x/y;
                    });
                  },
                  child: const Icon(CupertinoIcons.divide),
                ),
              ),
            ],
          ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: FloatingActionButton.extended(
                onPressed: (){
                 controllerone.clear();
                  controllertwo.clear();
                  z=0;
                  setState(() {

                  });
                }, label: const Text("Clear"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


class Textbutton extends StatelessWidget{
 const Textbutton({super.key,required this.hint, required this.controller});
  // ignore: prefer_typing_uninitialized_variables
  final hint;
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.transit_enterexit),
        border:OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: const BorderSide(
            width: 3,
          ),
        ),
        hintText: hint,
      ),
      keyboardType: TextInputType.number,
    );
  }
}
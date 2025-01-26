import 'package:all_flutter_tutorial/wscube/data_pass_one_to_another_screen/second.dart';
import 'package:flutter/material.dart';
class Firstpage extends StatelessWidget{
  final text=TextEditingController();

  Firstpage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title:const Row(
            children: [
              Icon(Icons.account_balance),
              Text(" first page",)
            ],
          ),
        shadowColor: Colors.black,
        elevation: 20,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 300,
              child: TextField(
                controller: text,
                // keyboardType: TextInputType.number,
                decoration:  InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                          width: 2
                      ),
                    ),
                    hintText: "  Enter samething",
                    suffixIcon: const Icon(Icons.transit_enterexit_outlined)
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Secondpage(text.text.toString()),));
            },
                child:const Text("My profile")),
          ],
        ),
      ),
    );
  }
}
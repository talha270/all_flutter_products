import 'package:all_flutter_tutorial/wscube/switch_from_one_to_another_screen/secondpage.dart';
import 'package:flutter/material.dart';
class Firstpage extends StatelessWidget{
   Firstpage({super.key});
  final emailtext=TextEditingController();

  final passwordtext= TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("First page",style: TextStyle(fontFamily: "fontst",fontSize: 30,),),
      ),
      drawer: const Drawer(),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.indigo.shade50,
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Login Here",style: TextStyle(fontFamily: "fontst",fontSize: 50,fontWeight: FontWeight.bold),),
            SizedBox(
              width: 380,
              child: TextField(
                controller: emailtext,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  hintText: "Email",
                  enabledBorder:OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: const BorderSide(
                      width: 2,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: const BorderSide(
                      width: 3,
                    )
                  ),
                  prefixIcon: const Icon(Icons.email_rounded,),
                  suffixIcon: const Icon(Icons.remove_red_eye_rounded)
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              width: 380,
              child: TextField(
                controller: passwordtext,
                obscureText: true,
                obscuringCharacter: "*",
                decoration: InputDecoration(
                    hintText: "Password",
                    enabledBorder:OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: const BorderSide(
                        width: 2,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(
                          width: 3,
                        )
                    ),
                    prefixIcon: const Icon(Icons.password_outlined),
                    suffixIcon: const Icon(Icons.remove_red_eye_rounded)
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: (){
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const Secondpage()));
                      // Navigator.push(context, MaterialPageRoute(builder: (context) => Secondpage(),)); //
                    },
                    child: const Text("Login",style: TextStyle(fontFamily: "fontst",fontSize: 23,fontWeight: FontWeight.bold),)),
                const SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                    onPressed: (){},
                    child: const Text("Forward password",style: TextStyle(fontFamily: "fontst",fontWeight: FontWeight.bold,fontSize: 23),))
              ],
            )
          ],
        )
      ),
    );
  }
}
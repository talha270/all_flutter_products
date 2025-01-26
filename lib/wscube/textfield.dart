import 'package:flutter/material.dart';

class Textfieldwidget extends StatefulWidget{
  const Textfieldwidget({super.key});

  @override
  State<Textfieldwidget> createState() => HomepageState();
}

class HomepageState extends State<Textfieldwidget> {
  var emailtext=TextEditingController();
  bool hide=true;
  var passwordtext= TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(bottom: 10),
          child: Text("Login page",style:TextStyle(fontSize: 21,),),
        ),
      ),
      drawer:const Drawer(),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.indigo.shade100,
        child: SingleChildScrollView(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children :[
              const Padding(
                padding: EdgeInsets.only(top: 200),
                child: Text("login with google",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              ),
              Container(
                height: 15,
              ),
              SizedBox(
                width: 300,
                child: TextField(
                  // enabled: false,
                  controller: emailtext,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    hintText: "Enter email",
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                        color: Colors.indigo,
                        width: 3,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                            color: Colors.black54,
                            width: 2
                        )
                    ),
                    disabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                          color: Colors.black54,
                          width: 1,
                        )
                    ),
                    // suffixText: "email Address",
                    suffixIcon: IconButton(
                      icon: const Icon(Icons.remove_red_eye_rounded,color: Colors.indigo,),
                      onPressed: () {  },

                    ),
                    // prefixText: "email Address",
                    prefixIcon: const Icon(Icons.email,color: Colors.indigo,),
                  ),
                ),
              ),
              Container(
                height: 20,
              ),
              SizedBox(
                width: 300,
                child: TextField(
                  controller: passwordtext,
                  obscureText: hide,
                  // obscuringCharacter: '*',
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                      hintText: "Enter password",
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                          color: Colors.indigo,
                          width: 3,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                            color: Colors.black54,
                            width: 2,
                          )
                      ),
                      disabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                            color: Colors.black54,
                            width: 1,
                          )
                      ),
                      prefixIcon: const Icon(Icons.password),
                      // prefixText: "Password",
                      suffixIcon: IconButton(
                        icon: const Icon(Icons.remove_red_eye_rounded),
                        onPressed: () {
                          setState(() {
                            hide==true? hide=false:hide=true;
                          });
                        },
                      )
                  ),
                ),
              ),
              Container(
                height: 80,
                width: 300,
                color: Colors.transparent,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: ElevatedButton(
                        onPressed: (){
                          String uemail = emailtext.text;
                          String upassword=passwordtext.text;
                          print("Login");
                          print("email : $uemail");
                          print("password : $upassword");
                        },
                        child: const Text("Login"),
                      ),
                    ),
                    Padding (
                      padding: const EdgeInsets.only(left: 10),
                      child: ElevatedButton(
                        onPressed: (){

                        }, child: const Text("forward password"),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
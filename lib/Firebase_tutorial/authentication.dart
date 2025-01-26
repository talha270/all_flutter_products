import 'package:all_flutter_tutorial/Firebase_tutorial/Functions/authfunction.dart';
import 'package:flutter/material.dart';

import 'forgotpassword.dart';

class AuthenicatedFire extends StatefulWidget{
  const AuthenicatedFire({super.key});

  @override
  State<AuthenicatedFire> createState() => _AuthenicatedFireState();
}

class _AuthenicatedFireState extends State<AuthenicatedFire> {
  bool islogin=false;
  String name="";
  String email="";
  String password="";
  final _formkey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        elevation: 10,
        title: const Text("Firebase App"),),
      body: Center(
          child: SingleChildScrollView(
            child: Container(
              margin: const EdgeInsets.all(20),
              child: Form(
                key: _formkey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  islogin? Container():
                  TextFormField(
                    key: const ValueKey("Username"),
                    decoration: const InputDecoration(
                      hintText: "Enter Username",
                    ),
                    validator: (value){
                      if(value!.length<3){
                        return "name is too small";
                      }
                      else{
                        return null;
                      }
                    },
                    onSaved: (value){
                      setState(() {
                      name=value!;
                      });
                    },
                  ),
                  const SizedBox(height: 5,),
                  TextFormField(
                    key: const ValueKey("Email"),
                    decoration: const InputDecoration(
                      hintText: "Enter Email",
                    ),
                    validator: (value){
                      if(!(value!.contains('@'))){
                        return "invalid email";
                      }
                      else{
                        return null;
                      }
                    },
                    onSaved: (value){
                      setState(() {
                        email=value!;
                      });
                    },
                  ),
                  const SizedBox(height: 5,),
                  TextFormField(
                    obscureText: true,
                    key: const ValueKey("Password"),
                    decoration: const InputDecoration(
                      hintText: "Enter Password",
                    ),
                    validator: (value){
                      if(value!.length<6){
                        return "password is too small";
                      }
                      else{
                        return null;
                      }
                    },
                    onSaved: (value){
                      setState(() {
                        password=value!;
                      });
                    },
                  ),
                  const SizedBox(height: 10,),
                  SizedBox(
                    height: 50,
                    width: double.infinity,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red,
                          shape:
                          BeveledRectangleBorder(borderRadius: BorderRadius.circular(30))
                          // RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))
                          // CircleBorder()
            
                        ),
                        onPressed: (){
                          final isvalid=_formkey.currentState!.validate();
                          if(isvalid){
                            _formkey.currentState!.save();
                            islogin? login(email: email,password: password):
                            signup(email: email,password:  password);
                          }
                        },
                        child: islogin? const Text("Login" ,style: TextStyle(color: Colors.black),):const Text("Signup" ,style: TextStyle(color: Colors.black),)),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      islogin? const Text("do you have a account?"):const Text("don't have an account"),
                      islogin? TextButton(onPressed: (){
                        setState(() {
                          islogin=!islogin;
                          email="";
                          password="";
                        });
                      },
                          child: const Text("Signup")):TextButton(onPressed: (){
                        setState(() {
                          islogin=!islogin;
                          email="";
                          password="";
                        });
                      },
                          child: const Text("Login")),
                    ],
                  ),
                  TextButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const Forgotpassword(),));
                  },
                      child: const Text("Forgot password"))
                ],
              )),
            ),
          )),
    );
  }
}

import 'package:flutter/material.dart';
class Formwidget extends StatefulWidget{

  const Formwidget({super.key});

  @override
  State<Formwidget> createState() => _FormwidgetState();
}

class _FormwidgetState extends State<Formwidget> {

  //----------------------functions-------------------------------
  trysubmit(){
    final isvalid=_formkey.currentState!.validate();
    if (isvalid){
      _formkey.currentState!.save();
      submit();
    }else{
      print("error");
    }
  }
  submit(){
    print(firstmame);
    print(lastmame);
    print(email);
    print(password);
  }
  String firstmame="";

  String lastmame="";

  String email="";

  String password="";

  final _formkey=GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Form"),
        elevation: 30,
        backgroundColor: Colors.red,
      ),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: Form(
            key: _formkey,
            child: Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                      hintText: "First name",
                  ),
                  key: const ValueKey("First name"),
                  validator: (value) {
                    if(value.toString().isEmpty){
                      return "first name should not be empty.";
                    }
                    else{
                      return null;
                    }
                  },
                  onSaved: (newValue) {
                    firstmame=newValue.toString();
                  },
                ),
                TextFormField(
                  decoration: const InputDecoration(
                      hintText: "Last name"
                  ),
                  // key: const ValueKey("Last name"),
                  validator: (value) {
                    if(value.toString().isEmpty){
                      return "Last name should not be empty.";
                    }
                    else{
                      return null;
                    }
                  },
                  onSaved: (newValue) {
                    lastmame=newValue.toString();
                  },
                ),
                TextFormField(
                  decoration: const InputDecoration(
                      hintText: "email"
                  ),
                  key: const ValueKey("email"),
                  validator: (value) {
                    if(value.toString().contains("@")&&value.toString().contains(".com")||(value.toString().contains("gmail")||value.toString().contains("yahoo"))){
                      return null;
                    }
                    else{
                      return "email is not correct.";
                    }
                  },
                  onSaved: (newValue) {
                    email=newValue.toString();
                  },
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: "password",
                  ),
                  key: const ValueKey("password"),
                  validator: (value) {
                    if(value.toString().length<=5){
                      return "password at least 6 character contains.";
                    }
                    else{
                      return null;
                    }
                  },
                  onSaved: (newValue) {
                    password=newValue.toString();
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                TextButton(
                    onPressed: (){trysubmit();}, child: const Text("submit",style: TextStyle(fontStyle: FontStyle.italic,color: Colors.red),))
              ],
            )),
      ),
    );
  }
}

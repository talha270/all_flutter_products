import'package:flutter/material.dart';
import 'package:encrypt/encrypt.dart' as encrypt;
class EncruptingString extends StatefulWidget{
  const EncruptingString({super.key});


  @override
  State<EncruptingString> createState()=>EncruptingStringstate();
}
class EncruptingStringstate extends State<EncruptingString>{
  var controller=TextEditingController();
  String encrupted="";
  String decrupted="";
  late var encryptedcode;
  final key=encrypt.Key.fromUtf8('my 32 length key................');
  final iv=encrypt.IV.fromLength(16);
  final encrypter=encrypt.Encrypter(encrypt.AES(encrypt.Key.fromUtf8('my 32 length key................')));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Encrupting String"),
        backgroundColor: Colors.red,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        TextField(
          controller: controller,
          decoration: InputDecoration(
            hintText: "Enter String"
          ),
        ),
          SizedBox(height: 20,),
          Text("encrupted: $encrupted"),
          ElevatedButton(onPressed: (){
           encryptedcode=encrypter.encrypt(controller.text.toString(),iv: iv);
          setState(() {
          encrupted=encryptedcode.base16;
          });
          }, child: Text("Encrypt")),
          SizedBox(height: 10,),
          Text("decrupted: $decrupted"),
          ElevatedButton(onPressed: (){
           decrupted= encrypter.decrypt(encryptedcode,iv: iv);
           setState(() {

           });
          }, child: Text("Decrypt")),

        ],
      ),
    );
  }
}

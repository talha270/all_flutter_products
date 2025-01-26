import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
class Sharepreferencesall extends StatefulWidget{
  const Sharepreferencesall({super.key});

  @override
  State<Sharepreferencesall> createState() => _SharepreferencesallState();
}

class _SharepreferencesallState extends State<Sharepreferencesall> {
  int intvalue=0;

  bool boolvalue=false;

  double doublevalue=0.0;

  String stringvalue="";

  void fetch()async{
    SharedPreferences sp=await SharedPreferences.getInstance();
    intvalue=sp.getInt("intkey")?? 0;
    boolvalue=sp.getBool("boolkey")??false;
    doublevalue=sp.getDouble("doublekey")??0.0;
    stringvalue=sp.getString("stringkey")??"";

    sp.remove("intkey");
    sp.remove("boolkey");
    sp.remove("doublekey");
    sp.remove("stringkey");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        backgroundColor: Colors.white,
        title: const Text("share preferences"),
      ),
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(stringvalue),
            Text(intvalue.toString()),
            Text(doublevalue.toString()),
            Text(boolvalue.toString()),
            const SizedBox(height: 30,),
            ElevatedButton(onPressed: (){
              setState(() {
              fetch();
              });
            },
                child: Text("get")),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () async{
        SharedPreferences sp=await SharedPreferences.getInstance();
        sp.setInt("intkey", 12);
        sp.setDouble("doublekey", 12.12);
        sp.setBool("boolkey", true);
        sp.setString("stringkey", "Muhammad Talha");


      },
        backgroundColor: Colors.red.shade200,
      child: const Icon(Icons.add),),
    );
  }
}

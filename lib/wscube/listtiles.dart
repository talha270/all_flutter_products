import 'package:flutter/material.dart';

class Listtileswidget extends StatelessWidget{
  final List names=["ghulam mustafa","ghulam taha","muhammad talha","muhammad abubaker","ali haider","syed hammad raza","syed hamad shah","shanif","abdullah","nizami","saad"];

  Listtileswidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 20,
        shadowColor:Colors.black,
        backgroundColor: Colors.white,
        title:  const Padding(
          padding: EdgeInsets.only(bottom: 20),
          child: Text("Home page",style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold,),),
        ),
      ),
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
            // color: Colors.red,
              image: DecorationImage(
                image: AssetImage("assets/images/best.jpg"),
                fit: BoxFit.fill,
                colorFilter: ColorFilter.mode(Colors.red, BlendMode.colorDodge)
              ),
            ),
          ),
          ListView.separated(itemBuilder: (context, index) {
            return ListTile(
              leading: const CircleAvatar(
                backgroundImage: AssetImage('assets/images/12.jpg'),
                backgroundColor: Colors.blue,
                // maxRadius: 20,
                // minRadius: 10,
                // radius: 40,
              ),
              title: Text(names[index],style: const TextStyle(fontWeight: FontWeight.bold),),
              subtitle: const Text("phone number",style: TextStyle(fontWeight: FontWeight.bold),),
              trailing: const Icon(Icons.account_circle_outlined),
            );
          },
              separatorBuilder:(context, index){
                return const Divider(height: 2,thickness: 1,color: Colors.black,);
              },
              itemCount:names.length ),
        ],
        // color: Colors.indigo.shade100,

      ),
    );
  }
}
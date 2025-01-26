import 'package:all_flutter_tutorial/wscube/style_and_theme/uihelper/fontsize.dart';
import 'package:flutter/material.dart';
void main()
{
  runApp(const Myapp());
}
class Myapp extends StatelessWidget{
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "test app",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.purple,
        textTheme: const TextTheme(
          displayLarge: TextStyle(fontSize: 23,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),
          titleMedium: TextStyle(fontSize: 15,fontWeight: FontWeight.normal,fontStyle:FontStyle.italic ),

      ),
      ),
      home:const Homepage(),
    );
  }
}
class Homepage extends StatelessWidget{
  const Homepage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(bottom: 20),
          child: Text("Home page",style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold),),
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.purple.shade50,
        child: Column(
          children: [
            Text("Text 1",style: Theme.of(context).textTheme.displayLarge!.copyWith(color: Colors.orange)),
            Text("Text 1",style: Theme.of(context).textTheme.titleMedium!.copyWith(color: Colors.blue),),
            Text("Text 1",style: Theme.of(context).textTheme.displayLarge!.copyWith(color: Colors.amber),),
            Text("Text 1",style: Theme.of(context).textTheme.titleMedium!.copyWith(color: Colors.red),),
            Text("Text 1",style: mytextstyle11(textColor: Colors.lightGreen,fontWeight: FontWeight.bold),),
            Text("Text 1",style: mytextstyle20(fontWeight: FontWeight.w500,textColor: Colors.green),),
            Text("Text 1",style: mytextstyle23(fontWeight: FontWeight.w600,textColor: Colors.purpleAccent),),
            Text("Text 1",style: mytextstyle30(fontWeight: FontWeight.w800,textColor: Colors.teal),),
          ],
        ),
      ),
    );
  }
}


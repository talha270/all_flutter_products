import 'package:flutter/material.dart';
void main()
{
  runApp(const Constrainedboxs());
}
class Constrainedboxs extends StatefulWidget{
  const Constrainedboxs({super.key});

  @override
  State<Constrainedboxs> createState() => _MyAppState();
}

class _MyAppState extends State<Constrainedboxs> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "constrained widget",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.blue
      ),
      home: const Homepage(),
    );
  }
}
class Homepage extends StatelessWidget{
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("constrained widget"),
          backgroundColor: Colors.green,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        body: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(
              minWidth: 100,
              maxWidth: 200,
              minHeight: 100,
              maxHeight: 200,
            ),
            child: ElevatedButton(
              onPressed: (){},
              child: const Text("click click click click click click click click",style: TextStyle(fontSize: 20,overflow: TextOverflow.ellipsis),),
            ),
          ),
        )
    );
  }
}
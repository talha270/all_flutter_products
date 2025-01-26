import 'package:flutter/material.dart';

class Addimages extends StatelessWidget {
  const Addimages({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'button and images',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch:Colors.cyan,
      ),
      home: const MyHomePage(title: 'button and images'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyanAccent,
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: Text(widget.title),
      ),
      body:
      // Center(
      //   child: SizedBox(
      //       height: 200,
      //       width: 200,
      //       child: Image.asset('assets/images/best.jpg')),
      // ),
      Center(
          child: Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSf_C3OjH3BbicdZ1UP0jAncMv-HpNvU_B1fg6C8H_vcg&s"),
                    // fit: BoxFit.contain
                    //   fit: BoxFit.cover
                    //   fit: BoxFit.fill
                    fit: BoxFit.fitHeight
                  //   fit: BoxFit.fitWidth
                  //   fit: BoxFit.none
                  //   fit: BoxFit.scaleDown
                )

            ),
            child:
            // Image.network("https://img.freepik.com/free-photo/natures-beauty-reflected-tranquil-mountain-waters-generative-ai_188544-7867.jpg?t=st=1702199245~exp=1702199845~hmac=daf9fa58e93a7be6d184791bdf480c597b804d5096dafa46b5e5d9b0f9ecaa2a")
            const Center(
              child: Text("click the background", style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 64,
                  fontStyle: FontStyle.italic)),
            ),
          )
      ),
    );
  }
}

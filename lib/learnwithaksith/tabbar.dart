import 'package:flutter/cupertino.dart';
import'package:flutter/material.dart';

class Tabbarhome extends StatelessWidget{
  const Tabbarhome({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        initialIndex: 0, //mean first page index
        length: 3, child: Scaffold(
      appBar: AppBar(
        title: const Text("WhatsApp"),
        backgroundColor: Colors.blue,
        bottom:TabBar(
            // isScrollable: true ,
            indicatorWeight: 10,
            // indicatorSize:TabBarIndicatorSize.label,
            indicatorSize:TabBarIndicatorSize.tab,
            indicatorColor: Colors.black,
            // overlayColor: WidgetStatePropertyAll(Colors.red),

            tabs: const [
              Tab(
                icon: Icon(Icons.chat),
                text: "Chat",
              ),
              Tab(
                icon: Icon(Icons.games_sharp),
                text: "Status",
              ),
              Tab(
                icon: Icon(Icons.phone),
                text: "Calls",
              ),
            ]),
      ),
      body: TabBarView(
          children: [
            Container(child: const Center(child: Text("chat",style: TextStyle(fontSize: 20),),),),

            Container(child: const Center(child: Text("Status",style: TextStyle(fontSize: 20),),),),

            Container(child: const Center(child: Text("Calls",style: TextStyle(fontSize: 20),),),),

          ]),

    ));
  }
}

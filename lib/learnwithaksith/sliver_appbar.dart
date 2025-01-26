import'package:flutter/material.dart';

class SliverAppbar extends StatelessWidget{
  const SliverAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            floating: true,
            // title: Text("SLiver appbar"),
            centerTitle: true,
            elevation: 20,
            expandedHeight: 200,
            flexibleSpace: FlexibleSpaceBar(
              title: Text("Sliver"),
              centerTitle: true,
              background: Image.asset("assets/images/spider.webp",fit: BoxFit.cover,),
            ),
          ),
        SliverList(delegate: SliverChildListDelegate([
          Center(
            child: Column(children: [
            Container(height: 300,
            width: double.infinity,
            color: Colors.red,),
              Container(height: 300,
                width: double.infinity,
                color: Colors.red,),
              Container(height: 300,
                width: double.infinity,
                color: Colors.red,),
              Container(height: 300,
                width: double.infinity,
                color: Colors.red,),
            ],),
          )
        ]))
        ],
      ),
    );
  }
}
import'package:flutter/material.dart';

import 'firstpage_ui.dart';
class Home extends StatefulWidget{
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  PageController pageController =PageController();
  int selectedindex=0;
  ontap(index){
    setState(() {
      selectedindex=index;
    });
    pageController.jumpToPage(selectedindex);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageController,
        children: const [
          Firstpage(),
          Center(child: Text("FOR DEMO",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40,fontStyle: FontStyle.italic,color: Colors.red),),),
          Center(child: Text("FOR DEMO",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40,fontStyle: FontStyle.italic,color: Colors.red),),),
        ],
        onPageChanged: (index) => ontap(index),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.youtube_searched_for),label: "Ticket"),
          BottomNavigationBarItem(icon: Icon(Icons.person_pin),label: "Person"),
        ],
        currentIndex: selectedindex,
        onTap:  (index) => ontap(index) ,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.black38,
        elevation: 30,
      ),
    );
  }
}
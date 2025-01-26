import 'package:flutter/material.dart';

import 'alert_box.dart';
import 'animatedtextkit.dart';
import 'bottomsheet.dart';
import 'dismisable.dart';

class Bottomnavigationwidget extends StatefulWidget{
  const Bottomnavigationwidget({super.key});

  @override
  State<Bottomnavigationwidget> createState()=> _Bottomnavigatonwidgetstate();

}

class _Bottomnavigatonwidgetstate extends State<Bottomnavigationwidget>{
  int selectedindex=0;
  PageController controller=PageController();
  onchange(index){

    setState(() {
      selectedindex=index;
    });
    controller.jumpToPage(selectedindex);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: controller,
        onPageChanged: (index)=>onchange(index),
        scrollDirection: Axis.vertical,
        children: [
          const AlertBoxwidget(),
          const Animatedtextpackage(),
          Buttomsheetwidget(),
          const Dismisablewidgets()
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home" ),
          BottomNavigationBarItem(icon: Icon(Icons.search),label: "Search" ),
          BottomNavigationBarItem(icon: Icon(Icons.add),label: "Add" ),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile" )
        ],
        currentIndex: selectedindex,
        onTap: (index)=>onchange(index),
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.black,
        backgroundColor: Colors.black,
        elevation: 50,
        showUnselectedLabels: true,
      ),
    );
  }

}

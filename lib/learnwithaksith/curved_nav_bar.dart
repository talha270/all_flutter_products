import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class CurvedNavBar extends StatefulWidget {
  const CurvedNavBar({super.key});

  @override
  State<CurvedNavBar> createState() => _CurvedNavBarState();
}

class _CurvedNavBarState extends State<CurvedNavBar> {
  int index=2;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
        extendBody: true,
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text("Curved nav bar"),
        ),
        body: Center(
          child: Text(index.toString()),
        ),
        bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(
            iconTheme: IconThemeData(color: Colors.green)
          ),
          child: CurvedNavigationBar(items: [
            Icon(Icons.home,size: 30, ),
            Icon(Icons.search,size: 30,),
            Icon(Icons.favorite,size: 30,),
            Icon(Icons.settings,size: 30,),
            Icon(Icons.person,size: 30,),
          ],
          backgroundColor: Colors.transparent,
          color: Colors.brown,
          height: 75,
          animationCurve: Curves.bounceIn,

          animationDuration: Duration(microseconds: 20),
          buttonBackgroundColor: Colors.yellow,
          index: index,
            onTap: (value) => setState(() {
              index=value;
            }),
          ),
        ),
      ),
    );
  }
}


import 'package:flutter/material.dart';

import 'animatedtextkit.dart';
import 'bottomsheet.dart';
import 'dismisable.dart';

class Dropdownwidget extends StatefulWidget{
  const Dropdownwidget({super.key});

  @override
  State<Dropdownwidget> createState() => _DropdownwidgetState();
}

class _DropdownwidgetState extends State<Dropdownwidget> {
  PageController pageController=PageController();
  int selectedindex=0;
  void ontaped(int index){
    setState(() {
      selectedindex=index;
    });
    pageController.jumpToPage(selectedindex);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text("drop down"),
      //   backgroundColor: Colors.red,
      //   elevation: 30,
      // ),
      body: PageView(
        controller: pageController,
        children: [
          const Home(),
          const Animatedtextpackage(),
          Buttomsheetwidget(),
          const Dismisablewidgets()

        ],
        onPageChanged: (index) => ontaped(index),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search_rounded),label: "Search"),
          BottomNavigationBarItem(icon: Icon(Icons.add),label: "Add"),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile"),
        ],
        currentIndex: selectedindex,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.red,
        onTap: (index) => ontaped(index),
      ),
    );
  }
}
class Home extends StatefulWidget{
  const Home({super.key});

  @override
  State<Home> createState()=> Homestate();
}
class Homestate extends State<Home>{
  String selectedvalue="one";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("drop down list"),
          elevation: 30,
          backgroundColor: Colors.red,
        ),
        body: Center(
          child: SizedBox(
            // color: Colors.red,
            width: MediaQuery.of(context).size.width,
            child: DropdownButton(
              isExpanded: true,
              dropdownColor: Colors.transparent,
              value: selectedvalue,
              icon: const Icon(Icons.arrow_drop_down_circle_outlined),
              style: const TextStyle(fontStyle: FontStyle.italic,color: Colors.red),
              underline: Container(
                height: 2,
                color: Colors.grey,
              ),
              onChanged: (String? value) {
                setState(() {
                  selectedvalue=value!;
                });
              },
              items: const [
                DropdownMenuItem(value: "one",child: Text("one")),
                DropdownMenuItem(value: "two",child: Text("two")),
                DropdownMenuItem(value: "three",child: Text("three"))
              ],
            ),
          ),
        )
    );
  }
}
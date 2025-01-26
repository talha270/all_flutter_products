import 'package:flutter/material.dart';
class Drawerwidget extends StatelessWidget{
  const Drawerwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Container(
          // color: Theme.of(context).primaryColor,
          child: ListView(
            children: const [
              DrawerHeader(
                  padding: EdgeInsets.zero,
                  child: Row(
                    children: [
                      CircleAvatar(
                          radius: 50,
                          backgroundImage: AssetImage("assets/images/12.jpg")),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Muhammad Talha"),
                            SizedBox(height: 4),
                            Text("programmer")
                          ],
                        ),
                      )
                    ],
                  )),
              ListTile(
                leading: Icon(Icons.folder,),
                title: Text("MY profile"),
              ),
              ListTile(
                leading: Icon(Icons.group,),
                title: Text("Share with"),
              ),
              ListTile(
                leading: Icon(Icons.star,),
                title: Text("Stared"),
              ),
              ListTile(
                leading: Icon(Icons.restore_from_trash_rounded,),
                title: Text("Deleted"),
              ),
              ListTile(
                leading: Icon(Icons.upload,),
                title: Text("Upload"),
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.share,),
                title: Text("Share"),
              ),
              ListTile(
                leading: Icon(Icons.logout,),
                title: Text("Logout"),
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        title: const Text("drawer"),
        backgroundColor: Colors.red,
        elevation: 30,
      ),
      body: const Center(
        child: Text("hey there"),
      ),
    );
  }
}
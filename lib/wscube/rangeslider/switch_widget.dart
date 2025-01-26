import 'package:flutter/material.dart';

class Buildswitch extends StatefulWidget{
  const Buildswitch({super.key});
  @override
  State<Buildswitch> createState()=> Buildswitchstate();
}
class Buildswitchstate extends State<Buildswitch>{
  bool isswitchon=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("switch widget"),
      centerTitle: true,
        elevation:20,
      ),
      body:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: SizedBox(
              height: 30,
              width: 50,
              child: FittedBox(//it used it for resize the swith
                fit: BoxFit.fill,
                child: Switch(value: isswitchon,
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  thumbIcon: WidgetStateProperty.all(Icon(Icons.connected_tv_sharp)),
                  onChanged: (value) {
                  setState(() {
                    isswitchon=value;
                  });
                  },),
              ),
            ),
          ),
        ],
      ),
      );
  }

}
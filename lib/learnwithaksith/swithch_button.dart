import 'package:flutter/material.dart';

class SwithchButton extends StatelessWidget {
  const SwithchButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // SwithchButton(),
          Switch(value: true, onChanged: (value) {},),
          SwitchListTile(value: true, onChanged: (value) {},),

          // adaptive is change the widgets on the basis of android and ios
          // SwithchButton(),
          Switch.adaptive(value: true, onChanged: (value) {},),
          SwitchListTile.adaptive( title:Text("title"),value: true, onChanged: (value) {},)
        ],
      ),
    );
  }
}


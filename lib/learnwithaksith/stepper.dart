import 'package:flutter/material.dart';

class Stepperwidget extends StatefulWidget {
  const Stepperwidget({super.key});

  @override
  State<Stepperwidget> createState() => _StepperwidgetState();
}

class _StepperwidgetState extends State<Stepperwidget> {
  int isactive = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.black54,
      appBar: AppBar(
        title: Container(
          height: 50,
          width: 400,
          // margin: EdgeInsets.all(20),
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [Colors.black, Colors.purple]),
            borderRadius: BorderRadius.circular(30),
          ),
          child: Center(
              child: Text(
            "MT Trader",
            style: TextStyle(color: Colors.deepPurple),
          )),
        ),
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        children: [
          RawChip(
            label: Text("Raw Chip"),
            avatar: Icon(Icons.person),
            deleteIcon: Icon(Icons.remove_circle),
            onPressed: () {},
            onDeleted: () {},
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
          ),
          Center(
            child: Stepper(
              steps: [
                Step(
                    isActive: isactive == 0,
                    title:
                        Text("Step 1", style: TextStyle(color: Colors.white)),
                    content: Text(
                      "step 1 is required",
                      style: TextStyle(color: Colors.white),
                    )),
                Step(
                    isActive: isactive == 1,
                    title:
                        Text("Step 2", style: TextStyle(color: Colors.white)),
                    content: Text("step 2 is required",
                        style: TextStyle(color: Colors.white))),
                Step(
                    isActive: isactive == 2,
                    title:
                        Text("Step 3", style: TextStyle(color: Colors.white)),
                    content: Text("step 3 is required",
                        style: TextStyle(color: Colors.white))),
              ],
              onStepTapped: (value) {
                setState(() {
                  isactive = value;
                });
              },
              currentStep: isactive,
              onStepContinue: () {
                if (isactive != 2) {
                  setState(() {
                    isactive++;
                  });
                }
              },
              onStepCancel: () {
                if (isactive != 0) {
                  setState(() {
                    isactive--;
                  });
                }
              },
              // type: StepperType.horizontal,
              connectorColor: WidgetStatePropertyAll(Colors.purple),
              connectorThickness: 3,
              // stepIconHeight: 30,
              stepIconWidth: 30,
            ),
          ),
        ],
      ),
    );
  }
}

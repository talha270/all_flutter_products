import 'package:flutter/material.dart';

class Rangesliderwidget extends StatelessWidget{
  const Rangesliderwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "range slider",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.cyan
      ),
      home: const Homepage(),
    );
  }
}
class Homepage extends StatefulWidget{
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  RangeValues value =const RangeValues(0,100);
  final double min=0;
  final double max=100;
  @override
  Widget build(BuildContext context) {
    RangeLabels labels =  RangeLabels(value.start.round().toString(), value.end.round().toString());
  return Scaffold(
      body: Column(
        children: [
          SliderTheme(
            data: const SliderThemeData(
              activeTickMarkColor: Colors.red,
              activeTrackColor: Colors.black,
              inactiveTickMarkColor: Colors.purple,
              inactiveTrackColor: Colors.cyanAccent,
              thumbColor: Colors.red,
              trackHeight: 4,
              rangeThumbShape: RoundRangeSliderThumbShape(enabledThumbRadius: 10,disabledThumbRadius:20,elevation:2,pressedElevation: 20),
              overlayShape: RoundSliderOverlayShape(overlayRadius: 10),
              overlayColor: Colors.blue,
              valueIndicatorColor: Colors.red,
              minThumbSeparation: 100.0
            ),
            child: Column(
              children: [
                Container(
                  height: 110,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.cyanAccent,
                    borderRadius: const BorderRadius.only(
                    bottomRight: Radius.circular(93),),
                    border: Border.all(
                      width: 2,
                      color: Colors.red,
                      style: BorderStyle.solid
                    ),
                    boxShadow: const[
                      BoxShadow(
                        color: Colors.black54,
                        spreadRadius:13,
                        blurRadius: 12,
                        // blurStyle: BlurStyle.inner,
                        // offset: Offset(22, 53)
                      )
                    ]
                  ),
                  child: const Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 70),
                        child: Icon(Icons.whatshot,size: 30,),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 70),
                        child: Text(" Range slider",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: Row(
                    children: [
                      buildslidelabels(min),
                      Expanded(
                        child: RangeSlider(values: value,
                          min: 0,
                          max: 100,
                          labels: labels,
                          divisions:10 ,
                          // activeColor: Colors.red,
                          // inactiveColor: Colors.blue.shade100,
                          onChanged:(newvalues){
                            value=newvalues;
                            setState(() {

                            });
                        }),
                      ),
                    buildslidelabels(max),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: RangeSlider(values: value,
                      min: 0,
                      max: 100,
                      labels: labels,
                      divisions:10 ,
                      activeColor: Colors.red,
                      inactiveColor: Colors.red.shade100,
                      onChanged:(newvalues){
                        value=newvalues;
                        setState(() {

                        });
                      }),
                )
              ]
            ),
          ),
        ],
      ),
    );
  }
}
Widget buildslidelabels (double value)=>SizedBox(
     width: 40,
    child: Text(value.round().toString(),style: const TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
    textAlign: TextAlign.center,
    ),
);
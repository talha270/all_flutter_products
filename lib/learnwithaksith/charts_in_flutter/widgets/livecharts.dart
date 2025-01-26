import 'dart:async';
import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
class LivechartsWidgets extends StatefulWidget{
  LivechartsWidgets({super.key});

  @override
  State<LivechartsWidgets> createState() => _LivechartsWidgetsState();
}

class _LivechartsWidgetsState extends State<LivechartsWidgets> {
  late List<LiveData> livechartdata;

  late ChartSeriesController _chartSeriesController;
  @override
  void initState() {
    super.initState();
    livechartdata=getlivedata();
    Timer.periodic(const Duration( seconds: 1), updatedata);
  }
  List<LiveData> getlivedata(){
    return <LiveData>[
      LiveData(0, 42),
      LiveData(1, 43),
      LiveData(2, 45),
      LiveData(3, 47),
      LiveData(4, 49),
      LiveData(5, 41),
      LiveData(6, 52),
      LiveData(7, 43),
      LiveData(8, 47),
      LiveData(9, 45),
    ];
  }
  int time=10;
  updatedata(Timer timer){
    livechartdata.add(LiveData(time++, (math.Random().nextInt(60))));
    livechartdata.removeAt(0);
    _chartSeriesController.updateDataSource(
      addedDataIndex: livechartdata.length-1,
      removedDataIndex: 0
    );
  }
  @override
  Widget build(BuildContext context) {
    print("build");
    return Scaffold(
      backgroundColor: Colors.black12,
      appBar: AppBar(
        backgroundColor: Colors.black12,
        title: const Text("Live Chart",style: TextStyle(color: Colors.white),),
        centerTitle: true,
        elevation: 50,
      ),
      body:SizedBox(
        height: 300,
        child: SfCartesianChart(
            legend: const Legend(isVisible: true),
            series: [
              LineSeries<LiveData,int>(
                  onRendererCreated: (ChartSeriesController controller) {
                    _chartSeriesController=controller;
                  },
                 dataSource: livechartdata,
                xValueMapper: (LiveData data,_)=>data.time,
                yValueMapper: (LiveData data,_)=>data.speed,
                legendItemText: "speed",
              ),
            ],
          primaryXAxis: const NumericAxis(
            majorGridLines: MajorGridLines(width: 2,color: Colors.yellow),
            edgeLabelPlacement: EdgeLabelPlacement.shift,
            interval: 2,
            title: AxisTitle(text: "Time"),
          ),
          primaryYAxis: const NumericAxis(
            majorGridLines: MajorGridLines(width: 2,color: Colors.red),
            edgeLabelPlacement: EdgeLabelPlacement.shift,
            interval: 2,
            title: AxisTitle(text: "Speed(m/s)"),
          ),
        ),
      ),
    );
  }
}
class LiveData{
  final int time;
  final num speed;

  LiveData(this.time, this.speed);

}

import'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class RadielChartWidget extends StatelessWidget {
  RadielChartWidget({super.key});
  final List<RadielChart> radilchart=[
    RadielChart(9000, "Apple"),
    RadielChart(5000, "facebook"),
    RadielChart(3000, "teal"),
    RadielChart(6000, "green"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.tealAccent,
      appBar: AppBar(
        backgroundColor: Colors.black12,
        title: const Text("Radiel Chart",style: TextStyle(color: Colors.white),),
        centerTitle: true,
        elevation: 40,
      ),
      body: Container(
        height: 400,
        margin: const EdgeInsets.all(10),
        child: SfCircularChart(
          backgroundColor: Colors.black,
          legend: const Legend(isVisible: true),
          title: const ChartTitle(text: "Pie Chart"),
          palette: const [Colors.deepPurple,Colors.green,Colors.yellow,Colors.tealAccent],
          series: [
            // RadialBarSeries<RadielChart,String>(
            //   dataSource: radilchart,
            //   xValueMapper: (RadielChart chart,_)=>chart.xdata,
            //   yValueMapper: (RadielChart chart,_)=>chart.ydata,
            //   // radius: "100",
            //   innerRadius: "20",
            //   // strokeWidth: 5,
            //   // strokeColor: Colors.red,
            //   trackColor: Colors.red,
            //   gap: "3%",
            //   cornerStyle: CornerStyle.bothCurve,
            //   // cornerStyle: CornerStyle.bothFlat,
            //   // cornerStyle: CornerStyle.endCurve,
            //   // cornerStyle: CornerStyle.startCurve,
            //   dataLabelSettings: const DataLabelSettings(
            //       isVisible: true
            //   ),
            // ),
            DoughnutSeries<RadielChart,String>(
              dataSource: radilchart,
              xValueMapper: (RadielChart chart,_)=>chart.xdata,
              yValueMapper: (RadielChart chart,_)=>chart.ydata,
              // radius: "100",
              // innerRadius: "20",
              // strokeWidth: 5,
              // strokeColor: Colors.red,
              // cornerStyle: CornerStyle.bothCurve,
              // cornerStyle: CornerStyle.bothFlat,
              // cornerStyle: CornerStyle.endCurve,
              // cornerStyle: CornerStyle.startCurve,
              dataLabelSettings: const DataLabelSettings(
                  isVisible: true
              ),
            )
          ],
        ),
      ),
    );
  }
}

class RadielChart{
  final num ydata;
  final String xdata;

  RadielChart(this.ydata, this.xdata);

}
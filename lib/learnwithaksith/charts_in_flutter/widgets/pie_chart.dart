import'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class PieChartwidget extends StatelessWidget {
  PieChartwidget({super.key});
  final List<PieChart> piechart=[
    PieChart(9000, "Apple"),
    PieChart(5000, "facebook"),
    PieChart(3000, "teal"),
    PieChart(6000, "green"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.tealAccent,
          appBar: AppBar(
            backgroundColor: Colors.black12,
            title: const Text("Pie Chart",style: TextStyle(color: Colors.white),),
            centerTitle: true,
            elevation: 40,
          ),
      body: Container(
        height: 300,
        margin: const EdgeInsets.all(10),
        child: SfCircularChart(
          backgroundColor: Colors.black,
          legend: const Legend(isVisible: true),
          title: const ChartTitle(text: "Pie Chart"),
          palette: const [Colors.red,Colors.green,Colors.yellow,Colors.tealAccent],
          series: [
            PieSeries<PieChart,String>(
              dataSource: piechart,
              xValueMapper: (PieChart chart,_)=>chart.xdata,
              yValueMapper: (PieChart chart,_)=>chart.ydata,
              radius: "100",
              explode: true,
              explodeIndex: 2,
              // explodeAll: true,
              // strokeWidth: 5,
              // strokeColor: Colors.red,
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

class PieChart{
  final num ydata;
  final String xdata;

  PieChart(this.ydata, this.xdata);

}
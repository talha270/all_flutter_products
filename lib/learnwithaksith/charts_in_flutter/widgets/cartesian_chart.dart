import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class CartesianChartWidget extends StatelessWidget {
  CartesianChartWidget({super.key});
  final List <SalesData>chartdata=[
    SalesData(2001, 34000, Colors.tealAccent),
    SalesData(2002, 36000, Colors.blue),
    SalesData(2003, 37000, Colors.green),
    SalesData(2004, 31000, Colors.red),
    SalesData(2005, 20000, Colors.white10),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      appBar: AppBar(
        backgroundColor: Colors.black12,
        title: const Text("Cartesian Charts",style: TextStyle(color: Colors.white),),
        centerTitle: true,
        elevation: 40,
      ),
      body: Container(
        height: 300,
        margin: const EdgeInsets.all(10),
        // color: Colors.red,
        child: SfCartesianChart(
          legend: const Legend(isVisible: true),
          title: const ChartTitle(text: "Sales Data"),
          series: [
            // LineSeries<SalesData,int>(dataSource: chartdata,
            //     legendItemText: "Sales",
            //     dashArray: [10,5],
            //     pointColorMapper: (SalesData sales,_)=>sales.color,
            //     xValueMapper: (SalesData sales,_)=>sales.year,
            //     yValueMapper: (SalesData sales,_)=>sales.sales),
            // BarSeries<SalesData,int>(dataSource: chartdata,
            //     legendItemText: "Sales",
            //     dashArray: [10,5],
            //     pointColorMapper: (SalesData sales,_)=>sales.color,
            //     xValueMapper: (SalesData sales,_)=>sales.year,
            //     yValueMapper: (SalesData sales,_)=>sales.sales),
            // SplineSeries<SalesData,int>(dataSource: chartdata,
            //     legendItemText: "Sales",
            //     dashArray: [10,5],
            //     pointColorMapper: (SalesData sales,_)=>sales.color,
            //     xValueMapper: (SalesData sales,_)=>sales.year,
            //     yValueMapper: (SalesData sales,_)=>sales.sales),
            // AreaSeries<SalesData,int>(dataSource: chartdata,
            //     color: Colors.red,
            //     legendItemText: "Sales",
            //     dashArray: [10,5],
            //     // pointColorMapper: (SalesData sales,_)=>sales.color,
            //     xValueMapper: (SalesData sales,_)=>sales.year,
            //     yValueMapper: (SalesData sales,_)=>sales.sales),
            // ColumnSeries<SalesData,int>(dataSource: chartdata,
            //     legendItemText: "Sales",
            //     dashArray: [10,5],
            //     pointColorMapper: (SalesData sales,_)=>sales.color,
            //     xValueMapper: (SalesData sales,_)=>sales.year,
            //     yValueMapper: (SalesData sales,_)=>sales.sales),
            WaterfallSeries<SalesData,int>(dataSource: chartdata,
                legendItemText: "Sales",
                dashArray: [10,5],
                pointColorMapper: (SalesData sales,_)=>sales.color,
                xValueMapper: (SalesData sales,_)=>sales.year,
                yValueMapper: (SalesData sales,_)=>sales.sales)
          ],
        ),
      ),
    );
  }
}

class SalesData{
  final int year;
  final double sales;
  final Color color;

  SalesData(this.year, this.sales, this.color);

}
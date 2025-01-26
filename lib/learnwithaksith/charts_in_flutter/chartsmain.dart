import 'package:all_flutter_tutorial/learnwithaksith/charts_in_flutter/widgets/cartesian_chart.dart';
import 'package:all_flutter_tutorial/learnwithaksith/charts_in_flutter/widgets/livecharts.dart';
import 'package:all_flutter_tutorial/learnwithaksith/charts_in_flutter/widgets/pie_chart.dart';
import 'package:all_flutter_tutorial/learnwithaksith/charts_in_flutter/widgets/radiel_chart.dart';
import'package:flutter/material.dart';
void main()=>runApp(const Chartsmain());
class Chartsmain extends StatelessWidget {
  const Chartsmain({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "charts app",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch:Colors.red
      ),
      home:
      // CartesianChartWidget(),
      // PieChartwidget(),
      // RadielChartWidget(),
      LivechartsWidgets(),
    );
  }
}

import 'package:charts_flutter/flutter.dart' as charts;
import 'LineChartParameters.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class EmissionChart extends StatelessWidget {
  final List<LineChartParameters> data;
  final String id;

  EmissionChart({@required this.data, @required this.id, selectionModels});

  @override
  Widget build(BuildContext context) {
    List<charts.Series<LineChartParameters, int>> series = [
      charts.Series(
          id: id,
          data: data,
          domainFn: (LineChartParameters series, _) => series.week,
          measureFn: (LineChartParameters series, _) => series.hours,
          colorFn: (LineChartParameters series, _) => series.barColor),
    ];

    return Container(
      height: 450,
      width: 450,
      padding: EdgeInsets.only(top: 15, bottom: 30, left: 30, right: 30),
      child: Card(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: BorderSide(
            color: Colors.black,
            width: 2,
          )
        ),
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: <Widget>[
              Expanded(
                child: charts.LineChart(series, animate: true),
                  ),
                ]
                ),
              ),
          ),
        );
  }
}
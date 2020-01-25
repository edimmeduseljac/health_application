import 'package:charts_flutter/flutter.dart' as charts;
import 'BarChartParameters.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class BarChart extends StatelessWidget {
  final List<BarChartParameters> data;
  final String id;

  BarChart({@required this.data, @required this.id, selectionModels});

  @override
  Widget build(BuildContext context) {
    List<charts.Series<BarChartParameters, String>> series = [
      charts.Series(
          id: id,
          data: data,
          domainFn: (BarChartParameters series, _) => series.week,
          measureFn: (BarChartParameters series, _) => series.hours,
          colorFn: (BarChartParameters series, _) => series.barColor),
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
                  child: charts.BarChart(series, animate: true, defaultRenderer:
                    new charts.BarRendererConfig(
                      cornerStrategy: const charts.ConstCornerStrategy(9)
                      ),
                    ),
                ),
              ]
          ),
        ),
      ),
    );
  }
}
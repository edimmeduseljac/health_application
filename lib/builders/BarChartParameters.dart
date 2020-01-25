import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/foundation.dart';

class BarChartParameters {
  final String week;
  final int hours;
  final charts.Color barColor;

  BarChartParameters(
      {@required this.week,
        @required this.hours,
        @required this.barColor});
}
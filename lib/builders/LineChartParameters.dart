import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/foundation.dart';

class LineChartParameters {
  final int week;
  final int hours;
  final charts.Color barColor;

  LineChartParameters(
      {@required this.week,
        @required this.hours,
        @required this.barColor});
}
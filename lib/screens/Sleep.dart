import 'dart:math';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:health_application/builders/BarChart.dart';
import 'package:health_application/builders/BarChartParameters.dart';
import 'package:health_application/builders/User.dart';

class Sleep extends StatefulWidget {
  @override
  SleepState createState() => SleepState();
}

final List<BarChartParameters> data = [
  BarChartParameters(
    week: "1",
    hours: Random().nextInt(40),
    barColor: charts.ColorUtil.fromDartColor(Color((Random().nextDouble() * 0xFFFFFF).toInt() << 0).withOpacity(1.0))
  ),
  BarChartParameters(
    week: "2",
    hours: Random().nextInt(40),
    barColor: charts.ColorUtil.fromDartColor(Color((Random().nextDouble() * 0xFFFFFF).toInt() << 0).withOpacity(1.0))
  ),
  BarChartParameters(
    week: "3",
    hours: Random().nextInt(40),
    barColor: charts.ColorUtil.fromDartColor(Color((Random().nextDouble() * 0xFFFFFF).toInt() << 0).withOpacity(1.0))
  ),
  BarChartParameters(
    week: "4",
    hours: Random().nextInt(40),
    barColor: charts.ColorUtil.fromDartColor(Color((Random().nextDouble() * 0xFFFFFF).toInt() << 0).withOpacity(1.0))
),
  BarChartParameters(
    week: "5",
    hours: Random().nextInt(40),
    barColor: charts.ColorUtil.fromDartColor(Color((Random().nextDouble() * 0xFFFFFF).toInt() << 0).withOpacity(1.0))
  ),
  BarChartParameters(
    week: "6",
    hours: Random().nextInt(40),
    barColor: charts.ColorUtil.fromDartColor(Color((Random().nextDouble() * 0xFFFFFF).toInt() << 0).withOpacity(1.0))
  )
];

User user = new User();

class SleepState extends State<Sleep> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SingleChildScrollView(
        child: new Container(
          alignment: Alignment.center,
          width: double.infinity,
          child: Align(
            alignment: Alignment.center,
            child:Padding(
                padding: EdgeInsets.only(top: 55),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(height: 10),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(right: 35),
                            child: Container(
                                width: double.infinity,
                                height: 75,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(topRight: Radius.circular(10), bottomRight: Radius.circular(10)),
                                  gradient: LinearGradient(
                                      colors: [
                                        Colors.blue,
                                        Colors.blueAccent.withOpacity(0.8),
                                      ]
                                  ),
                                ),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding: EdgeInsets.only(left: 35),
                                      child: Text("Sleep analasys", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30, color: Colors.white),
                                      )
                                  ),
                                )
                            ),
                          )
                      ),
                      SizedBox(height: 40),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: EdgeInsets.only(left: 35),
                              child: Text("Chart:", style: TextStyle(fontSize: 28, color: Colors.black),
                              ) ,
                            )
                        ),
                      ),
                      Container(
                        child: Center(
                            child: Column(
                                children: <Widget>[
                                  BarChart(id: "Sleep hours", data: data),
                                ]
                            )
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 35, bottom: 15),
                        child: Text("Details:", style: TextStyle(fontSize: 28, color: Colors.black),
                        ) ,
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Padding(
                            padding: EdgeInsets.all(0),
                            child: Container(
                                padding: EdgeInsets.all(10),
                                width: 350,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  gradient: LinearGradient(
                                      colors: [
                                        Colors.cyan,
                                        Colors.cyanAccent.withOpacity(0.6)
                                      ]
                                  ),
                                  border: Border.all(
                                    color: Colors.black,
                                    width: 2,
                                  ),
                                ),
                                child: Row(
                                  children: <Widget>[
                                    Icon(
                                      FontAwesomeIcons.calendarDay,
                                      color: Colors.black,
                                      size: 18,
                                    ),
                                    Padding(
                                        padding: EdgeInsets.all(10),
                                        child: Text("Daily average: " + user.getTimeStringFromDouble(user.getWork()), style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.black))
                                    ),
                                  ],
                                )
                            )
                        ),
                      ),
                      SizedBox(height: 20),
                      Align(
                        alignment: Alignment.center,
                        child: Padding(
                            padding: EdgeInsets.all(0),
                            child: Container(
                                padding: EdgeInsets.all(10),
                                width: 350,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  gradient: LinearGradient(
                                      colors: [
                                        Colors.pink,
                                        Colors.pinkAccent.withOpacity(0.8)
                                      ]
                                  ),
                                  border: Border.all(
                                    color: Colors.black,
                                    width: 2,
                                  ),
                                ),
                                child: Row(
                                  children: <Widget>[
                                    Icon(
                                      FontAwesomeIcons.bed,
                                      color: Colors.black,
                                      size: 18,
                                    ),
                                    Padding(
                                        padding: EdgeInsets.all(10),
                                        child: Text("Total sleep time: " + user.getSumWork().toString() + " h", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.black))
                                    ),
                                  ],
                                )
                            )
                        ),
                      ),
                      SizedBox(height: 20)
                    ]
                )
            ),
          ),
        ),
      ),
    );
  }
}
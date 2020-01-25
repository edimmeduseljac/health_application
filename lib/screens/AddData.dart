import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:percent_indicator/percent_indicator.dart';
import '../builders/LineChart.dart';
import '../builders/LineChartParameters.dart';
import '../builders/User.dart';

class AddData extends StatefulWidget {
  @override
  AddDataState createState() => AddDataState();
}


User user = new User();

final List<LineChartParameters> data = [
  LineChartParameters(
    week: 1,
    hours: Random().nextInt(40),
    barColor: charts.ColorUtil.fromDartColor(Color(0xFF000000)),
  ),
  LineChartParameters(
    week: 2,
    hours: Random().nextInt(40),
    barColor: charts.ColorUtil.fromDartColor(Color(0xFF000000)),
  ),
  LineChartParameters(
    week: 3,
    hours: Random().nextInt(40),
    barColor: charts.ColorUtil.fromDartColor(Color(0xFF000000)),
  ),
  LineChartParameters(
    week: 4,
    hours: Random().nextInt(40),
    barColor: charts.ColorUtil.fromDartColor(Color(0xFF000000)),
  ),
  LineChartParameters(
    week: 5,
    hours: Random().nextInt(40),
    barColor: charts.ColorUtil.fromDartColor(Color(0xFF000000)),
  ),
  LineChartParameters(
    week: 6,
    hours: Random().nextInt(40),
    barColor: charts.ColorUtil.fromDartColor(Color(0xFF000000)),
  )
];

String determineText() {
  String text;
  if ((user.getSportsScore() / 100) == 1.0)
  {
    text = "Goal reached!";
  }
  else {
    text = user.getSportsScore().toString() + " %";
  }
  return text;
}

double heightAnimatedWater = 155;
double heightAnimatedBeer = 155;
double heightContainingContainer = 155;
bool isExtended = false;
double iconSize = 52.5;


Center determineWidgetWater() {
  if (heightAnimatedWater == 250) {
    try {
      return Center(
        child: Container(
            child: IconButton(
              icon: Icon(Icons.plus_one),
              iconSize: 52.5,
              color: Colors.white,
              onPressed: () {},
            )
        ),
      );
    }
    catch(e) {
      print(e);
    }
  }
  else {
    return Center();
  }
}

Center determineWidgetBeer() {
  if (heightAnimatedBeer == 250) {
    try {
      return Center(
        child: Container(
            child: IconButton(
              icon: Icon(Icons.plus_one),
              iconSize: 52.5,
              color: Colors.white,
              onPressed: () {},
            )
        ),
      );
    }
    catch(e) {
      print(e);
    }
  }
  else {
    return Center();
  }
}

class AddDataState extends State<AddData> {
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
                                        Colors.grey,
                                        Colors.grey.withOpacity(0.4),
                                      ]
                                  ),
                                ),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding: EdgeInsets.only(left: 35),
                                      child: Text("Update your health", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30, color: Colors.white),
                                      )
                                  ),
                                )
                            ),
                          )
                      ),
                      SizedBox(height: 20),
                      SizedBox(height: 40),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: EdgeInsets.only(left: 35),
                              child: Text("Drinks: ", style: TextStyle(fontSize: 28, color: Colors.black),
                              ) ,
                            )
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(35),
                        child: AnimatedContainer(
                          duration: Duration(seconds: 1),
                          height: heightContainingContainer,
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                child: Align(
                                alignment: Alignment.topCenter,
                                  child: AnimatedContainer(
                                    duration: Duration(seconds: 1),
                                    height: heightAnimatedWater,
                                    alignment: Alignment.bottomCenter,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(35),
                                        border: Border.all(
                                          color: Colors.blue[500],
                                          width: 2,
                                        ),
                                        gradient: LinearGradient(
                                            colors: [
                                              Colors.lightBlueAccent.withOpacity(0.9),
                                              Colors.blue,
                                            ]
                                        ),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.blue,
                                            blurRadius: 15.0,
                                            spreadRadius: 0.0,
                                          ),
                                        ]
                                    ),
                                    padding: EdgeInsets.all(5),
                                    child: Padding(
                                        padding: EdgeInsets.all(5),
                                        child: Column(
                                          children: <Widget>[
                                            RawMaterialButton(
                                                child: IconButton(
                                                  icon: Icon(Icons.local_drink),
                                                  color: Colors.white,
                                                  iconSize: 115,
                                                  onPressed: () {
                                                    setState(() {
                                                      if (heightAnimatedWater < 250)
                                                      {
                                                        heightAnimatedBeer = 155;
                                                        heightAnimatedWater = 250;
                                                        heightContainingContainer = 255;
                                                      }
                                                      else {
                                                        heightAnimatedWater = 155;
                                                        heightContainingContainer = 155;
                                                      }
                                                    });
                                                  },
                                                )
                                            ),
                                            determineWidgetWater(),
                                          ],
                                        )
                                    )
                                ),
                                ),
                              ),
                              SizedBox(width: 20),
                              Expanded(
                                child: Align(
                                  alignment: Alignment.topCenter,
                                  child: AnimatedContainer(
                                    height: heightAnimatedBeer,
                                    duration: Duration(seconds: 1),
                                    alignment: Alignment.bottomCenter,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(35),
                                      border: Border.all(
                                        color: Colors.brown[500],
                                        width: 2,
                                      ),
                                      gradient: LinearGradient(
                                        colors: [
                                          Colors.orange.withOpacity(0.9),
                                          Colors.brown,
                                        ],
                                      ),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.brown,
                                            blurRadius: 15.0,
                                            spreadRadius: 0.0,
                                          ),
                                        ]
                                    ),
                                    padding: EdgeInsets.only(left: 5, right: 5),
                                    child: Padding(
                                        padding: EdgeInsets.all(5),
                                        child: Column(
                                          children: <Widget>[
                                            Padding(
                                            padding: EdgeInsets.only(left: 15, bottom: 10),
                                            child: Column(
                                              children:<Widget>[
                                                RawMaterialButton(
                                                  onPressed: () {},
                                                    child: IconButton(
                                                      icon: Icon(FontAwesomeIcons.beer),
                                                      color: Colors.white,
                                                      iconSize: 115,
                                                      onPressed: () {
                                                        setState(() {
                                                          if (heightAnimatedBeer < 250) {
                                                            heightAnimatedWater = 155;
                                                            heightAnimatedBeer = 250;
                                                            heightContainingContainer = 255;
                                                            isExtended = true;
                                                          }
                                                          else {
                                                            heightAnimatedBeer = 155;
                                                            heightContainingContainer = 155;
                                                          }
                                                        });
                                                      },
                                                    )
                                                  ),
                                                determineWidgetBeer(),
                                                ],
                                              ),
                                            ),
                                          ],
                                        )
                                    )
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 40),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: EdgeInsets.only(left: 35),
                              child: Text("Goal of today:", style: TextStyle(fontSize: 28, color: Colors.black),
                              ) ,
                            )
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        child: Center(
                            child: Column(
                                children: <Widget>[
                                  new CircularPercentIndicator(
                                    radius: 240.0,
                                    lineWidth: 20.0,
                                    animation: true,
                                    percent: user.getSportsScore() / 100,
                                    center: new Text(
                                      determineText(),
                                      style:
                                      new TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                                    ),
                                    circularStrokeCap: CircularStrokeCap.round,
                                    progressColor: Colors.green,
                                  ),
                                ]
                            )
                        ),
                      ),
                      SizedBox(height: 20),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: EdgeInsets.only(left: 35),
                              child: Text("Average time:", style: TextStyle(fontSize: 28, color: Colors.black),
                              ) ,
                            )
                        ),
                      ),
                      Container(
                        child: Center(
                            child: Column(
                                children: <Widget>[
                                  LineChart(id: "Worked hours", data: data),
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
                                        Colors.deepOrange,
                                        Colors.deepOrangeAccent.withOpacity(0.6)
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
                                        child: Text("Daily average: " + user.getSports().toString() + " min.", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.black))
                                    ),
                                  ],
                                )
                            )
                        ),
                      ),
                      SizedBox(height: 15),
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
                                        Colors.brown,
                                        Colors.brown.withOpacity(0.8)
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
                                      FontAwesomeIcons.walking,
                                      color: Colors.black,
                                      size: 18,
                                    ),
                                    Padding(
                                        padding: EdgeInsets.all(10),
                                        child: Text("Total excercise time: " + user.getSumWork().toString() + " h", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.black))
                                    ),
                                  ],
                                )
                            )
                        ),
                      ),
                      SizedBox(height: 15),
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
                                        Colors.lime,
                                        Colors.limeAccent.withOpacity(0.8)
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
                                      FontAwesomeIcons.award,
                                      color: Colors.black,
                                      size: 18,
                                    ),
                                    Padding(
                                        padding: EdgeInsets.all(10),
                                        child: Text("Daily goal: " + user.getGoal().toString() + " min", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.black))
                                    ),
                                  ],
                                )
                            )
                        ),
                      ),
                      SizedBox(height: 20),
                    ]
                )
            ),
          ),
        ),
      ),
    );
  }
}
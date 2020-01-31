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

bool isDrink = false;
bool isFood = false;

Icon determineConsumedIcon() {
  Icon icon;
  if (isDrink == true) {
    icon: Icon(
      Icons.restaurant,
      size: 18,
      color: Color((Random().nextDouble() * 0xFFFFFF).toInt() << 0).withOpacity(1.0),
    );
  }
  else if (isFood == true) {
    icon: Icon(
      Icons.local_drink,
      size: 18,
      color: Color((Random().nextDouble() * 0xFFFFFF).toInt() << 0).withOpacity(1.0),
    );
  }
  return icon;
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
                        padding: EdgeInsets.only(left: 35, right: 35, top: 35, bottom: 20),
                        child: Container(
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                child: Align(
                                alignment: Alignment.topCenter,
                                  child: Container(
                                    height: 155,
                                    width: 175,
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
                                                  splashColor: Colors.transparent,
                                                  iconSize: 115,
                                                  onPressed: () {
                                                    setState(() {
                                                    });
                                                  },
                                                )
                                            ),
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
                                  child: Container(
                                    height: 155,
                                    width: 175,
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
                                        padding: EdgeInsets.only(left: 5, top: 2),
                                        child: Column(
                                          children: <Widget>[
                                            Padding(
                                            padding: EdgeInsets.all(5),
                                            child: Column(
                                              children:<Widget>[
                                                Center(
                                                  child: RawMaterialButton(
                                                    onPressed: () {},
                                                      child: IconButton(
                                                        icon: Icon(FontAwesomeIcons.beer),
                                                        color: Colors.white,
                                                        iconSize: 113,
                                                        splashColor: Colors.transparent,
                                                        onPressed: () {
                                                        },
                                                      )
                                                    ),
                                                  ),
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
                      Center(
                          child: Container(
                            height: 155,
                            width: 160,
                            alignment: Alignment.bottomCenter,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(35),
                                border: Border.all(
                                  color: Colors.green[500],
                                  width: 2,
                                ),
                                gradient: LinearGradient(
                                    colors: [
                                      Colors.lightGreenAccent.withOpacity(0.9),
                                      Colors.green,
                                    ]
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.green,
                                    blurRadius: 15.0,
                                    spreadRadius: 0.0,
                                  ),
                                ]
                              ),
                              child: Padding(
                                  padding: EdgeInsets.all(5),
                                  child: Column(
                                    children: <Widget>[
                                      Padding(
                                        padding: EdgeInsets.all(5),
                                        child: Column(
                                          children:<Widget>[
                                            Center(
                                              child: RawMaterialButton(
                                                  onPressed: () {},
                                                  child: IconButton(
                                                    icon: Icon(Icons.local_cafe),
                                                    color: Colors.white,
                                                    iconSize: 115,
                                                    splashColor: Colors.transparent,
                                                    onPressed: () {
                                                    },
                                                  )
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  )
                              )
                          ),
                      ),
                      SizedBox(height: 40),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: EdgeInsets.only(left: 35),
                              child: Text("Consumed:", style: TextStyle(fontSize: 28, color: Colors.black),
                              ) ,
                            )
                        ),
                      ),
                      SizedBox(height: 20),
                      Padding(
                        padding: EdgeInsets.only(right: 35, left: 35, top: 10, bottom: 20),
                        child: Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white
                            ),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Container(
                                    width: double.infinity,
                                    padding: EdgeInsets.only(right: 10, left: 10),
                                    decoration: BoxDecoration(
                                      // borderRadius: BorderRadius.circular(10),
                                        border: Border(bottom: BorderSide(color: Colors.grey))
                                    ),
                                    child:new RawMaterialButton(
                                      child: new Row(
                                        children: <Widget>[
                                          determineConsumedIcon(),
                                          new Padding(
                                            padding: EdgeInsets.all(20),
                                            child: new Text("Nutrition", style: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold)),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: double.infinity,
                                    padding: EdgeInsets.only(right: 10, left: 10),
                                    decoration: BoxDecoration(
                                      // borderRadius: BorderRadius.circular(10),
                                        border: Border(bottom: BorderSide(color: Colors.grey))
                                    ),
                                    child:new RawMaterialButton(
                                      child: new Row(
                                        children: <Widget>[
                                          determineConsumedIcon(),
                                          new Padding(
                                            padding: EdgeInsets.all(20),
                                            child: new Text("Workouts", style: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold)),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: double.infinity,
                                    padding: EdgeInsets.only(right: 10, left: 10),
                                    child:new RawMaterialButton(
                                      child: new Row(
                                        children: <Widget>[
                                          new Icon(
                                            FontAwesomeIcons.weight,
                                            color: Colors.cyan,
                                            size: 18,
                                          ),
                                          new Padding(
                                            padding: EdgeInsets.all(20),
                                            child: new Text("Weight", style: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold)),
                                          ),
                                        ],
                                      ),
                                    ),
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
                      Padding(
                        padding: EdgeInsets.only(left: 35, bottom: 15),
                        child: Text("Details:", style: TextStyle(fontSize: 28, color: Colors.black),
                        ) ,
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
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../builders/User.dart';

class Calories extends StatefulWidget {
  @override
  CaloriesState createState() => CaloriesState();
}

User user = new User();

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

Icon determineIcon() {
  if (user.getCaloriesScore() < 2000) {
    return Icon(
        Icons.thumb_up,
        color: Colors.green,
        size: 120
    );
  }
  else {
    return Icon(
        Icons.thumb_down,
        color: Colors.red,
        size: 120
    );
  }
}

class CaloriesState extends State<Calories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SingleChildScrollView(
        child: new Container(
          alignment: Alignment.center,
          width: double.infinity,
          /*decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [
                    Colors.red,
                    Colors.redAccent.withOpacity(0.8),
                  ],
                  stops: [0.0,1.0]
              )
          ),*/
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
                                        Colors.green,
                                        Colors.green.withOpacity(0.8),
                                      ]
                                  ),
                                ),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding: EdgeInsets.only(left: 35),
                                      child: Text("Eaten calories analasys", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30, color: Colors.white),
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
                              child: Text("Current status:", style: TextStyle(fontSize: 28, color: Colors.black),
                              ) ,
                            )
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        child: Center(
                            child: Column(
                                children: <Widget>[
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(35),
                                      gradient: LinearGradient(
                                        colors: [
                                          Colors.white,
                                          Colors.white.withOpacity(0.8),
                                        ]
                                      ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.all(15),
                                        child: determineIcon(),
                                    ),
                                  ),
                                ]
                            )
                        ),
                      ),
                      SizedBox(height: 20),
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
                                        Colors.pink,
                                        Colors.pinkAccent.withOpacity(0.6)
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
                                      FontAwesomeIcons.female,
                                      color: Colors.black,
                                      size: 18,
                                    ),
                                    Padding(
                                        padding: EdgeInsets.all(10),
                                        child: Text("Female statistics",
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight
                                                    .bold,
                                                color: Colors.black))
                                    ),
                                  ]
                              ),
                            ),
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
                                        Colors.blue,
                                        Colors.lightBlueAccent.withOpacity(0.8)
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
                                      FontAwesomeIcons.male,
                                      color: Colors.black,
                                      size: 18,
                                    ),
                                    Padding(
                                        padding: EdgeInsets.all(10),
                                        child: Text("Male statistics", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.black))
                                    ),
                                    SizedBox(height: 15),
                                    SizedBox(height: 20),
                                  ]
                                )
                            ),
                        ),
                      ),
                    ]
                ),
            ),
          ),
        ),
      ),
    );
  }
}
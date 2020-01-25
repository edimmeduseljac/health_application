import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:health_application/builders/StaggerdAnimation.dart';
import 'package:health_application/screens/AddData.dart';
import 'package:health_application/screens/Calories.dart';
import 'package:health_application/builders/FastInSlowOutPageBuilder.dart';
import 'package:health_application/screens/Homepage.dart';
import 'package:health_application/screens/Sleep.dart';
import 'package:health_application/screens/Sports.dart';
import 'package:health_application/builders/User.dart';
import 'package:health_application/screens/Weight.dart';
import 'package:health_application/screens/Work.dart';
import 'package:health_application/screens/Workouts.dart';

import 'Nutrition.dart';

class Dashboard extends StatefulWidget {
  @override
  DashboardState createState() => DashboardState();
}

User user = new User();

class DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        brightness: Brightness.light,
        backgroundColor: Colors.white,
        elevation: 12,
        leading: new IconButton(
          icon: new Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.push(context, FastInSlowOutPageRoute(widget: HomePage()));
            },
        ),
        title: Text("Dashboard", style: TextStyle(color: Colors.grey[800], fontSize: 20),),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(0.0),
            child: IconButton(
              color: Colors.grey,
              icon: Icon(Icons.account_circle),
              iconSize: 35,
              onPressed: () {},
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 20),
              Text("Quick functions", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.grey[800])),
              SizedBox(height: 20),
              Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    width: 100,
                    margin: EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: LinearGradient(
                            colors: [
                              Colors.grey,
                              Colors.grey[300].withOpacity(0.8)
                            ]
                        )
                    ),
                    child: RawMaterialButton(
                      onPressed: () {
                        Navigator.push(context, FastInSlowOutPageRoute(widget: AddData()));
                      },
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.all(20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Text("Add data", style: TextStyle(color: Colors.white, fontSize: 30),),
                                  SizedBox(width: 150),
                                  Icon(
                                    Icons.add_circle,
                                    size: 50,
                                    color: Colors.grey,
                                  ),
                                ]
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ]
          ),
              SizedBox(height: 40),
              Text("Average statistics", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.grey[800]),),
              SizedBox(height: 20,),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      width: 100,
                      margin: EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: LinearGradient(
                              colors: [
                                Colors.blue,
                                Colors.blueAccent.withOpacity(0.8)
                              ]
                          )
                      ),
                      child: RawMaterialButton(
                        onPressed: () {
                          Navigator.push(context, FastInSlowOutPageRoute(widget: Sleep()));
                        },
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.all(20.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text("Sleep", style: TextStyle(color: Colors.white, fontSize: 30),),
                                SizedBox(height: 20,),
                                Text(user.getTimeStringFromDouble(user.getSleep()), style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.w100),),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      width: 100,
                      margin: EdgeInsets.only(left: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: LinearGradient(
                              colors: [
                                Colors.purple,
                                Colors.purpleAccent.withOpacity(0.8)
                              ]
                          )
                      ),
                      child: RawMaterialButton(
                        onPressed: () {
                          Navigator.push(context, FastInSlowOutPageRoute(widget: Sports()));
                        },
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.all(20.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text("Sports", style: TextStyle(color: Colors.white, fontSize: 30),),
                                SizedBox(height: 20,),
                                Text(user.getSports().toString() + " min.", style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.w100),),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      width: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: LinearGradient(
                              colors: [
                                Colors.green,
                                Colors.greenAccent.withOpacity(0.8)
                              ]
                          )
                      ),
                      child: RawMaterialButton(
                        onPressed: () {
                          Navigator.push(context, FastInSlowOutPageRoute(widget: Calories()));
                        },
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.all(20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text("Eaten calories", style: TextStyle(color: Colors.white, fontSize: 30),),
                                SizedBox(height: 20,),
                                Text(user.getKcal().toString() + " kcal", style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.w100),),
                              ],
                            ),
                          ),
                        ),
                      )
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      width: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: LinearGradient(
                              colors: [
                                Colors.red,
                                Colors.redAccent.withOpacity(0.8)
                              ]
                          )
                      ),
                      child: RawMaterialButton(
                        onPressed: () {
                          Navigator.push(context, FastInSlowOutPageRoute(widget: Work()));
                        },
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.all(20.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text("Worked hours", style: TextStyle(color: Colors.white, fontSize: 30),),
                                SizedBox(height: 20,),
                                Text(user.getTimeStringFromDouble(user.getWork()), style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.w100),),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 40,),
              Text("Health Categories", style: TextStyle(color: Colors.grey[800], fontWeight: FontWeight.bold, fontSize: 20),),
              SizedBox(height: 20,),
              Container(
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
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          // borderRadius: BorderRadius.circular(10),
                            border: Border(bottom: BorderSide(color: Colors.grey))
                        ),
                        child:new RawMaterialButton(
                          child: new Row(
                            children: <Widget>[
                              new Icon(
                                FontAwesomeIcons.carrot,
                                color: Colors.deepOrange,
                                size: 18,
                              ),
                              new Padding(
                                padding: EdgeInsets.all(20),
                                child: new Text("Nutrition", style: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold)),
                              ),
                            ],
                          ),
                          onPressed: () {
                            Navigator.push(context, FastInSlowOutPageRoute(widget: Nutrition()));
                          }
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          // borderRadius: BorderRadius.circular(10),
                            border: Border(bottom: BorderSide(color: Colors.grey))
                        ),
                        child:new RawMaterialButton(
                            child: new Row(
                              children: <Widget>[
                                new Icon(
                                  FontAwesomeIcons.dumbbell,
                                  color: Colors.blueGrey,
                                  size: 18,
                                ),
                                new Padding(
                                  padding: EdgeInsets.all(20),
                                  child: new Text("Workouts", style: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold)),
                                ),
                              ],
                            ),
                            onPressed: () {
                              Navigator.push(context, FastInSlowOutPageRoute(widget: Workouts()));
                            }
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        padding: EdgeInsets.all(10),
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
                            onPressed: () {
                              Navigator.push(context, FastInSlowOutPageRoute(widget: Weight()));
                            }
                        ),
                      ),
                    ]
                )
              )
            ]
          ),
        )
      ),
    );
  }
}
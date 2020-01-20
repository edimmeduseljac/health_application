import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Calories extends StatefulWidget {
  @override
  CaloriesState createState() => CaloriesState();
}


class CaloriesState extends State<Calories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: new Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [
                    Colors.green,
                    Colors.lightGreen.withOpacity(0.8),
                  ],
                  stops: [0.0,1.0]
              )
          ),
        )
    );
  }
}
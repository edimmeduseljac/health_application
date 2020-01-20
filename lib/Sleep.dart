import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Sleep extends StatefulWidget {
  @override
  SleepState createState() => SleepState();
}


class SleepState extends State<Sleep> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: new Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [
                    Colors.blue.withOpacity(0.8),
                    Colors.lightBlue.withOpacity(0.5),
                  ],
                stops: [0.4,0.8]
              )
          ),
        )
    );
  }
}
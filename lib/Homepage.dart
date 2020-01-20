import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Dashboard.dart';
import 'dart:math';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  PageController _pageController;

  AnimationController rippleController;
  AnimationController scaleController;

  Animation<double> rippleAnimation;
  Animation<double> scaleAnimation;

  @override
  void initState() {
    super.initState();

    _pageController = PageController(
        initialPage: 0
    );

    rippleController = AnimationController(
        vsync: this,
        duration: Duration(seconds: 1)
    );

    scaleController = AnimationController(
        vsync: this,
        duration: Duration(seconds: 1)
    )..addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        Navigator.push(context, PageRouteBuilder(
            transitionDuration: Duration(seconds: 1),
            transitionsBuilder: (BuildContext context, Animation<double> animation, Animation<double> secondAnimation, Widget child) {
              return Dashboard();
            },
            pageBuilder: (BuildContext context, Animation<double> animation, Animation<double> secondAnimation) {
              return Dashboard();
            }
        ));
      }
    });

    rippleAnimation = Tween<double>(
        begin: 80.0,
        end: 90.0
    ).animate(rippleController)..addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        rippleController.reverse();
      } else if(status == AnimationStatus.dismissed) {
        rippleController.forward();
      }
    });

    scaleAnimation = Tween<double>(
        begin: 1.0,
        end: 30.0
    ).animate(scaleController);

    rippleController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: <Widget>[
          makePage(image: determineImage()),
        ],
      ),
    );
  }

  var timeNow = DateTime.now();

  String determineText() {
    String text;
    if (timeNow.hour.toInt() <= 9) {
      text = "Start your day with your health!";
    }
    else if (timeNow.hour.toInt() >= 17) {
      text = "End your day with your health!";
    }
    else {
      text = "Make your day healthier!";
    }
    return text;
  }

  String determineTime() {
    String time;
    if ((timeNow.hour.toInt() <= 9) && (timeNow.minute.toInt() <= 9)) {
      time = "0" + timeNow.hour.toString() + ":" + "0" + timeNow.minute.toString();
    }
    else if ((timeNow.hour.toInt() <= 9)) {
      time = "0" + timeNow.hour.toString() + ":" + timeNow.minute.toString();
    }
    else if ((timeNow.minute.toInt() <= 9)) {
      time = timeNow.hour.toString() + ":" + "0" + timeNow.minute.toString();
    }
    else {
      time = timeNow.hour.toString() + ":" + timeNow.minute.toString();
    }
    return time;
  }

  String determineDate() {
    String time;
    if ((timeNow.day.toInt() <= 9) && (timeNow.month.toInt() <= 9)) {
      time = "0" + timeNow.day.toString() + "." + "0" + timeNow.month.toString() + "." + timeNow.year.toString();
    }
    else if ((timeNow.day.toInt() <= 9)) {
      time = "0" + timeNow.day.toString() + "." + timeNow.month.toString() + "." + timeNow.year.toString();
    }
    else if ((timeNow.month.toInt() <= 9)) {
      time = timeNow.day.toString() + "." + "0" + timeNow.month.toString() + "." + timeNow.year.toString();
    }
    else {
      time = timeNow.day.toString() + "." + timeNow.month.toString() + "." + timeNow.year.toString();
    }
    return time;
  }

  String determineImage() {
    String imageName;
    List image;
    Random random = new Random();
    int index = random.nextInt(3);
    if (timeNow.hour.toInt() <= 9) {
      image = ["assets/images/morning1.jfif", "assets/images/morning2.jfif", "assets/images/morning3.jfif"];
      imageName = image[index].toString();
    }
    else if (timeNow.hour.toInt() >= 17) {
      image = ["assets/images/evening1.jfif", "assets/images/evening2.jfif", "assets/images/evening3.jfif"];
      imageName = image[index].toString();
    }
    else {
      image = ["assets/images/middle1.jfif", "assets/images/middle2.jfif", "assets/images/middle3.jfif"];
      imageName = image[index].toString();
    }
    return imageName;
  }

  Widget makePage({image}) {
    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.cover,
            )
        ),
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [
                    Colors.black.withOpacity(0.3),
                    Colors.black.withOpacity(0.3),
                  ]
              )
          ),
          child: Padding(
            padding: EdgeInsets.all(35),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 55),
                Text(
                  'Welcome',
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'OpenSans',
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 35),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      determineTime(),
                      style: TextStyle(color: Colors.green[400],
                          fontSize: 40,
                          fontFamily: 'OpenSans',
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Current Time",
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'OpenSans',
                          fontSize: 30),
                    ),
                  ],
                ),
                SizedBox(height: 50),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      determineDate(),
                      style: TextStyle(color: Colors.yellow[400],
                          fontSize: 40,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Current Date",
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'OpenSans',
                          fontSize: 30),
                    ),
                  ],
                ),
                SizedBox(height: 85),
                Align(
                  child: Text(determineText(),
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontSize: 28, fontWeight: FontWeight.w100),),
                ),
                SizedBox(height: 15,),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: AnimatedBuilder(
                    animation: rippleAnimation,
                    builder: (context, child) => Container(
                      width: rippleAnimation.value,
                      height: rippleAnimation.value,
                      child: Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.purple.withOpacity(.4)
                        ),
                        child: InkWell(
                          onTap: () {
                            scaleController.forward();
                          },
                          child: AnimatedBuilder(
                            animation: scaleAnimation,
                            builder: (context, child) => Transform.scale(
                              scale: scaleAnimation.value,
                              child: Container(
                                margin: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.purple
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        )
    );
  }
}
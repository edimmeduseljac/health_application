import 'package:flutter/cupertino.dart';

class FastInSlowOutPageRoute extends PageRouteBuilder {

  final Widget widget;

  FastInSlowOutPageRoute({this.widget}):super(
    transitionDuration: Duration(seconds: 1),
    transitionsBuilder: (BuildContext context, Animation<double> animation, Animation<double> secondAnimation, Widget child) {
      animation = CurvedAnimation(parent: animation,curve: Curves.linearToEaseOut);

      return ScaleTransition(
        alignment: Alignment.bottomCenter,
        scale: animation,
        child: child,
      );
    },
    pageBuilder: (BuildContext context, Animation<double> animation, Animation<double> secondAnimation) {
    return widget;
    },
  );
}
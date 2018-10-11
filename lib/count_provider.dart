import 'package:flutter/material.dart';
import 'package:flutter_design_patterns/my_counter.dart';

class CountProvider extends InheritedWidget {
  final MyCounter myCounter;
  final Widget child;

  CountProvider({this.myCounter, this.child}) : super(child: child);
  //Creating a static instance of CountProvider using Inherited Widget class
  //Since its static, it will persist any change over time.
  static CountProvider of(BuildContext context) =>
      context.inheritFromWidgetOfExactType(CountProvider);

  //Notify whenever the value of counters are no longer the same
  @override
  bool updateShouldNotify(CountProvider oldWidget) {
    return (myCounter != oldWidget.myCounter);
  }
}

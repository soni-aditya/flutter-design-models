import 'package:flutter/material.dart';
import 'package:flutter_design_patterns/my_counter.dart';

class Class3 extends StatelessWidget {
  final MyCounter myCounter;

  Class3(this.myCounter);

  @override
  Widget build(BuildContext context) {
    return Text(
      'Class 3 : ${myCounter.count}',
      style: Theme.of(context).textTheme.headline,
    );
  }
}

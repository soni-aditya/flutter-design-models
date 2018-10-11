import 'package:flutter/material.dart';
import 'package:flutter_design_patterns/count_provider.dart';
import 'package:flutter_design_patterns/my_counter.dart';

class Class3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MyCounter myCounter = CountProvider.of(context).myCounter;
    return Text(
      'Class 3 : ${myCounter.count}',
      style: Theme.of(context).textTheme.headline,
    );
  }
}

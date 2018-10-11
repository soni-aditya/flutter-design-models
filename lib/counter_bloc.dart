import 'dart:async';

import 'package:flutter_design_patterns/my_counter.dart';
/*
StreamController => A Controller class which controls the input and output stream of data.
Sink => input data
Stream => Output data
 */

class CounterBloc {
  final additionController = StreamController<MyCounter>();

  //Takes input
  Sink<MyCounter> get add => additionController.sink;

  final itemController = StreamController<int>();

  //Gives output
  Stream<int> get itemCount => itemController.stream;

  CounterBloc() {
    additionController.stream.listen(onAdd);
  }

  void onAdd(MyCounter myCounter) {
    myCounter.increaseCount();
    itemController.add(myCounter.count);
  }
}

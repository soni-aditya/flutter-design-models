import 'package:flutter_design_patterns/my_counter.dart';
import 'package:scoped_model/scoped_model.dart';

class CounterModel extends Model {
  MyCounter _myCounter = MyCounter(0);

  int get counts => _myCounter.count;
  addToCount() {
    _myCounter.increaseCount();
    notifyListeners();
  }
}

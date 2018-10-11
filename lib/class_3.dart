import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

import 'counter_model.dart';

class Class3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScopedModelDescendant<CounterModel>(
      builder: (context, child, model) => Text(
            'Class 3 : ${model.counts}',
            style: Theme.of(context).textTheme.headline,
          ),
    );
  }
}

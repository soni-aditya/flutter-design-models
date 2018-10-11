import 'package:flutter/material.dart';
import 'package:flutter_design_patterns/count_bloc_provider.dart';
import 'package:flutter_design_patterns/counter_bloc.dart';

/*
StreamBuilder rebuilds itself based on the latest instance of data available in the stream.
(stream it is associated with / listening to)
 */
class Class3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    CounterBloc counterBloc = CountBlocProvider.of(context).bloc;
    return StreamBuilder<int>(
      stream: counterBloc.itemCount,
      initialData: 0,
      builder: (context, snapshot) => Text(
            'Class 3 : ${snapshot.data}',
            style: Theme.of(context).textTheme.headline,
          ),
    );
  }
}

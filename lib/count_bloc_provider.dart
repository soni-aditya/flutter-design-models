import 'package:flutter/material.dart';
import 'package:flutter_design_patterns/counter_bloc.dart';

class CountBlocProvider extends InheritedWidget {
  final CounterBloc bloc;
  final Widget child;

  CountBlocProvider({this.bloc, this.child}) : super(child: child);

  static CountBlocProvider of(BuildContext context) =>
      context.inheritFromWidgetOfExactType(CountBlocProvider);

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) {
    return true;
  }
}

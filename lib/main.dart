import 'package:flutter/material.dart';
import 'package:random_pk/random_pk.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: HomePage());
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var myCounter = MyCounter(0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Default'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Class1(),
            Class2(myCounter),
            RandomContainer(
              height: 100.0,
              width: 100.0,
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            myCounter.increaseCount();
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

class MyCounter {
  int count;

  MyCounter(this.count);

  increaseCount() {
    count += 1;
  }
}

class Class1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      'Class 1',
      style: Theme.of(context).textTheme.headline,
    );
  }
}

class Class2 extends StatelessWidget {
  final MyCounter myCounter;

  Class2(this.myCounter);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          'Class 2',
          style: Theme.of(context).textTheme.headline,
        ),
        Class3(myCounter)
      ],
    );
  }
}

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

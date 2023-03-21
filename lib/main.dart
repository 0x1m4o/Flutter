import 'package:flutter/material.dart';
import './widget-lifecycle/pages/counter_page.dart';
import './widget-lifecycle/pages/other_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CounterPage(),
      routes: {
        CounterPage.routeName: (context) => CounterPage(),
        OtherPage.routeName: (context) => OtherPage(),
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Date Format')),
        body: Center(
            child: Text(
          DateFormat.Hm().add_yMMMd().format(DateTime.now()),
          style: TextStyle(fontSize: 18),
        )),
      ),
    );
  }
}

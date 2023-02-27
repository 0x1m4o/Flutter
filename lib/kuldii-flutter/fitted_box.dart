import 'package:flutter/material.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Fitted Box'),
        ),
        body: Center(
          child: Container(
            width: 300,
            height: 100,
            child: FittedBox(
              // child: Text('Fitted Box - Test'),
              child: Image.network('https://picsum.photos/300/300'),
              alignment: Alignment.centerRight,
              fit: BoxFit.contain,
            ),
            color: Colors.lightBlue[300],
          ),
        ),
      ),
    );
  }
}

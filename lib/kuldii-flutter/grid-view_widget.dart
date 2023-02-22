import 'dart:math';

import 'package:flutter/material.dart';
import 'package:learning_flutter/kuldii-flutter/text_field-usage.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  List<Container> myContainer = List.generate(90, (index) {
    return Container(
      color: Color.fromARGB(255, Random().nextInt(256), Random().nextInt(256),
          Random().nextInt(256)),
    );
  });
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Grid View'),
          ),
          body:

              /// Using Gridview
              // GridView(
              //   padding: EdgeInsets.all(10),
              //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              //       crossAxisCount: 3,
              //       mainAxisSpacing: 10,
              //       crossAxisSpacing: 10,
              //       childAspectRatio: 3 / 4),
              //   children: myContainer,
              // ),

              /// OR

              /// Using Gridview.counter
              GridView.count(
            crossAxisCount: 3,
            mainAxisSpacing: 5,
            crossAxisSpacing: 10,
            childAspectRatio: 3 / 4,
            children: myContainer,
          )),
    );
  }
}

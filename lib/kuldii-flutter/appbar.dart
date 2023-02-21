import 'package:flutter/material.dart';
import 'package:learning_flutter/kuldii-flutter/date_format.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            leading: Container(
              color: Colors.pink,
            ),
            leadingWidth: 50,
            // titleSpacing: 0,
            title: Container(
              width: 120,
              height: 60,
              color: Colors.amber,
            ),
            // centerTitle: false,
            actions: [
              Container(
                color: Colors.green,
                width: 50,
              ),
              Container(
                color: Colors.black,
                width: 50,
              ),
              Container(
                color: Colors.purple,
                width: 50,
              ),
              Container(
                color: Colors.pink,
                width: 50,
              ),
            ],
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(20),
              child: Text("Bottom"),
            ),
            flexibleSpace: Container(
              height: 37,
              color: Colors.white,
            ),
          ),
        ));
  }
}

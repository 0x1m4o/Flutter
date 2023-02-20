import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
          title: Text('Column'),
        ),
        body: Container(
          color: Colors.grey,

          /// Column
          /// Column main axis alignment take 100% height of screen but just follow the greater width of child
          // child: Column(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   crossAxisAlignment: CrossAxisAlignment.end,
          //   children: [
          //     Container(
          //       width: 200,
          //       height: 50,
          //       color: Colors.green,
          //     ),
          //     Container(
          //       width: 50,
          //       height: 50,
          //       color: Colors.blue,
          //     ),
          //     Container(
          //       width: 100,
          //       height: 50,
          //       color: Colors.amber,
          //     ),
          //     Container(
          //       width: 300,
          //       height: 50,
          //       color: Colors.red,
          //     ),
          //   ],
          // ),

          /// Row
          /// Row main axis alignment take 100% width of screen but just follow the greater height of child
          // child: Row(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   crossAxisAlignment: CrossAxisAlignment.start,
          //   children: [
          //     Container(
          //       height: 200,
          //       width: 50,
          //       color: Colors.green,
          //     ),
          //     Container(
          //       height: 50,
          //       width: 50,
          //       color: Colors.blue,
          //     ),
          //     Container(
          //       height: 100,
          //       width: 50,
          //       color: Colors.amber,
          //     ),
          //     Container(
          //       height: 300,
          //       width: 50,
          //       color: Colors.red,
          //     ),
          //   ],
          // ),

          /// Stack
          /// Stack is to create a stack of content.
          /// More bottom of the stack content in code is set to front in the display
          child: Stack(
            children: [
              Container(
                width: 400,
                height: 400,
                color: Colors.green,
              ),
              Container(
                width: 300,
                height: 300,
                color: Colors.blue,
              ),
              Container(
                width: 200,
                height: 200,
                color: Colors.amber,
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.red,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

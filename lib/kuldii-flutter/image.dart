import 'package:flutter/material.dart';
import 'package:learning_flutter/kuldii-flutter/text-widget.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Image"),
        ),
        body: Center(
          child: Container(
              width: 350,
              height: 500,
              color: Colors.lightBlue,
              child:
                  // Image.asset("images/swagcat1.png",
                  //     fit:
                  //         // BoxFit.fill,
                  //         BoxFit.cover),

                  /// OR

                  Image(
                      image:
                          // AssetImage("images/swagcat1.png"),
                          NetworkImage("https://picsum.photos/200/300"))),
        ),
      ),
    );
  }
}

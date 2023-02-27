import 'package:flutter/material.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Flexible and Expanded'),
        ),
        body:
            // Row(children: [
            //   Flexible(
            //     flex: 2,
            //     child: Container(
            //       height: 100,
            //       color: Colors.green,
            //     ),
            //   ),
            //   Flexible(
            //     flex: 6,
            //     // fit: FlexFit.tight,
            //     child: Container(
            //       height: 100,
            //       color: Colors.blue,
            //     ),
            //   ),
            //   Flexible(
            //     flex: 2,
            //     // fit: FlexFit.loose,
            //     child: Container(
            //       height: 100,
            //       color: Colors.amber,
            //     ),
            //   ),
            // ]),
            Column(
          children: [
            Flexible(
                flex: 1,
                child: Container(
                  color: Colors.green,
                )),

            /// Expanded is the same as Flexible with fit: FlexFit.tight
            Expanded(
                flex: 5,
                child: Container(
                  color: Colors.lightBlue,
                )),
          ],
        ));
  }
}

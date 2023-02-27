import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learning_flutter/kuldii-flutter/media_query.dart';

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
        appBar: AppBar(title: Text('Cupertino (IOS - Style)')),
        body: Center(
          child: ElevatedButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return Platform.isIOS
                          ? CupertinoAlertDialog(
                              title: Text('This is not the IOS Style'),
                              content: Text('Because your platform is android'),
                              actions: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    TextButton(
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                        child: Text('No')),
                                    TextButton(
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                        child: Text('Yes'))
                                  ],
                                )
                              ],
                            )
                          : AlertDialog(
                              title: Text('This is not the IOS Style'),
                              content: Text('Because your platform is android'),
                              actions: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    TextButton(
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                        child: Text('No')),
                                    TextButton(
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                        child: Text('Yes'))
                                  ],
                                )
                              ],
                            );
                    });
              },
              child: Text("Show Dialog")),
        ));
  }
}

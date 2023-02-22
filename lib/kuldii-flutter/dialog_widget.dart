import 'package:flutter/material.dart';
import 'package:learning_flutter/kuldii-flutter/text_field-usage.dart';
import '../home.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHome(),
    );
  }
}

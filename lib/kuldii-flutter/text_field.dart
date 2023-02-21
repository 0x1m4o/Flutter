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
      home: Scaffold(
        appBar: AppBar(
          title: Text('Text Fields Feature'),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(50),
            child: TextField(
              // autocorrect: false,
              decoration: InputDecoration(hintText: 'Tests'),
              // enableSuggestions: false,
              // keyboardType: TextInputType.number,
              // obscureText: true,
              // obscuringCharacter: '\$',
              enableInteractiveSelection: true,
              // readOnly: true,
              // enabled: false,
              autofocus: true,
            ),
          ),
        ),
      ),
    );
  }
}

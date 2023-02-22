import 'package:flutter/material.dart';
import 'package:learning_flutter/kuldii-flutter/date_format.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final TextEditingController myController =
      TextEditingController(text: 'Vanessa');
  String hasil = 'Hasil Text';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Text Fields Usage'),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: EdgeInsets.all(25),
              child: TextField(
                // controller: myController,
                onChanged: (value) {
                  print('Text Changed');
                },
                onEditingComplete: () {
                  print('Editing is complete');
                },
                onSubmitted: (value) {
                  setState(() {
                    hasil = value;
                  });
                },
              ),
            ),
            Text(hasil)
          ],
        )),
      ),
    );
  }
}

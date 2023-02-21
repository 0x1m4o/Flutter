import 'package:flutter/material.dart';
import 'package:learning_flutter/kuldii-flutter/extract_and_faker.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int counter = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Stateful Widget(Increment Apps)",
            style: TextStyle(fontSize: 14),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              counter.toString(),
              style: TextStyle(fontSize: 14 + counter.toDouble()

                  /// OR
                  // 14 + double.parse(counter.toString())
                  ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FloatingActionButton(
                    child: Icon(Icons.remove),
                    onPressed: () {
                      /// Use setstate to give the information to stateful what the things that you want to chance
                      setState(() {
                        if (counter != 1) {
                          counter--;
                        }
                      });
                      print(counter);
                    }),
                FloatingActionButton(
                  child: Icon(Icons.add),
                  onPressed: () {
                    setState(() {
                      counter++;
                    });
                    print(counter);
                  },
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ChangeNotifierProvider(
          create: (context) => Counter(), child: MyHomePage()),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final counter = Provider.of<Counter>(context, listen: false);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer<Counter>(
              builder: (context, value, child) {
                return Text(
                  value.counter.toString(),
                  style: TextStyle(fontSize: 30 + value._counter!.toDouble()),
                );
              },
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  onPressed: counter.minus,
                  color: Colors.red,
                  icon: Icon(Icons.remove),
                ),
                IconButton(
                  onPressed: counter.add,
                  color: Colors.blue,
                  icon: Icon(Icons.add),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class Counter with ChangeNotifier {
  int? _counter = 0;
  int? get counter => _counter;

  void add() {
    _counter = _counter! + 1;
    notifyListeners();
  }

  void minus() {
    if (_counter != 0) _counter = _counter! - 1;
    notifyListeners();
  }
}

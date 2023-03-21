import 'package:flutter/material.dart';
import '../widgets/counter.dart';

class CounterPage extends StatefulWidget {
  static const routeName = '/counter-page';
  @override
  State<CounterPage> createState() {
    print('===============');
    print('CounterPage()');
    return _CounterPageState();
  }
}

class _CounterPageState extends State<CounterPage> {
  int counter = 0;
  @override
  void didChangeDependencies() {
    final int? lastNumberState =
        ModalRoute.of(context)!.settings.arguments as int?;
    if (lastNumberState != null) {
      counter = lastNumberState;
    }
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    print('build');
    return Scaffold(
      appBar: AppBar(
        title: Text('Widget Lifecycle'),
      ),
      body: WidgetCounter(counter: counter),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            counter++;
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

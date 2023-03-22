import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomepage(),
    );
  }
}

class MyHomepage extends StatefulWidget {
  @override
  State<MyHomepage> createState() => _MyHomepageState();
}

class _MyHomepageState extends State<MyHomepage> with WidgetsBindingObserver {
  int counter = 0;
  String status = '';
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    switch (state) {
      case AppLifecycleState.inactive:
        print('AppLifecycleState.inactive');
        setState(() {
          status = 'Inactive App Lifecycle';
        });
        break;
      case AppLifecycleState.detached:
        print('AppLifecycleState.detached');
        setState(() {
          status = 'Detached App Lifecycle';
        });
        break;
      case AppLifecycleState.paused:
        print('AppLifecycleState.paused');
        setState(() {
          status = 'Paused App Lifecycle';
        });
        break;
      case AppLifecycleState.resumed:
        print('AppLifecycleState.resumed');
        setState(() {
          status = 'Resumed App Lifecycle';
        });
        break;
      default:
    }
    super.didChangeAppLifecycleState(state);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App Lifecycle'),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                '$counter',
                style: TextStyle(fontSize: 35),
              ),
              Text(
                '$status',
                style: TextStyle(fontSize: 35),
              ),
            ]),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Add',
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

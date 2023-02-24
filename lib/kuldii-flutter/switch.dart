import 'package:flutter/material.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHome(),
    );
  }
}

class MyHome extends StatefulWidget {
  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  bool statusSwitch = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Switch'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 130,
            width: 150,
            child: FittedBox(
                fit: BoxFit.fill,
                child: Switch(
                  value: statusSwitch,
                  onChanged: (value) {
                    setState(() {
                      statusSwitch = !statusSwitch;
                    });
                  },
                  activeColor: Colors.indigo,
                  inactiveThumbColor: Colors.pink[100],
                  inactiveTrackColor: Colors.pink[100],
                  activeThumbImage: AssetImage('images/swagcat2.png'),
                  inactiveThumbImage: AssetImage('images/swagcat1.png'),
                )),
          ),
          Text(
            (statusSwitch == true) ? 'Switch On' : 'Switch Off',
            style: TextStyle(fontSize: 30),
          )
        ],
      )),
    );
  }
}

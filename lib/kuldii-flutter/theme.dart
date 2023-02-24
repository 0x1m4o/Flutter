import 'package:flutter/material.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          // brightness: Brightness.dark,
          primaryColor: Colors.indigo,
          primarySwatch: Colors.grey,
          // colorScheme:
          // ColorScheme.fromSwatch().copyWith(secondary: Colors.amber),
          // visualDensity: VisualDensity.compact,
          // visualDensity: VisualDensity.comfortable,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          textTheme: TextTheme(
              bodyMedium: TextStyle(fontSize: 10, color: Colors.pink[300]))),
      home: MyHome(),
    );
  }
}

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Theme'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'This is a Text',
            style: TextStyle(fontSize: 25),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'This is a Text 2',
            style:
                TextStyle(fontSize: 25, color: Theme.of(context).primaryColor),
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text('Button'),
          )
        ],
      )),
    );
  }
}

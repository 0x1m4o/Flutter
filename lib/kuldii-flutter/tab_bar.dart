import 'package:flutter/material.dart';
import 'package:learning_flutter/kuldii-flutter/date_format.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    List<Tab> myTab = [
      Tab(
        text: '1',
        icon: Icon(Icons.add_a_photo),
      ),
      Tab(
        text: '2',
        icon: Icon(Icons.person),
      ),
      Tab(
        text: '3',
        icon: Icon(Icons.settings),
      )
    ];
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
          // initialIndex: 1,
          length: myTab.length,
          child: Scaffold(
            appBar: AppBar(
              leading: Container(
                child: Image.asset('images/swagcat2.png'),
              ),
              titleSpacing: 20,
              title: Text("Tab Bar"),
              bottom: PreferredSize(
                preferredSize: Size.fromHeight(90),
                child: TabBar(
                  unselectedLabelColor: Color.fromARGB(113, 255, 255, 255),
                  labelStyle: TextStyle(fontWeight: FontWeight.w800),
                  unselectedLabelStyle: TextStyle(fontWeight: FontWeight.w400),
                  // indicatorColor: Colors.lightBlue,
                  // indicatorWeight: 3,
                  indicator: BoxDecoration(
                      color: Colors.deepOrangeAccent,
                      border: Border(
                          bottom: BorderSide(width: 3, color: Colors.white))),
                  tabs: myTab,
                ),
              ),
            ),
            body: TabBarView(children: [
              Center(
                child: Text('Tab 1'),
              ),
              Center(
                child: Text('Tab 2'),
              ),
              Center(
                child: Text('Tab 3'),
              ),
            ]),
          )),
    );
  }
}

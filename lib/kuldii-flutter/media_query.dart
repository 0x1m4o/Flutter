import 'dart:math';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/physics.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: DefaultTabController(
          initialIndex: 0,
          length: 3,
          child: MyHome(),
        ));
  }
}

class MyHome extends StatefulWidget {
  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  int? indexTab;

  List<Tab> myTab = [
    Tab(
      text: 'Chat',
    ),
    Tab(
      text: 'Status',
    ),
    Tab(
      text: 'Call',
    )
  ];

  @override
  Widget build(BuildContext context) {
    Faker faker = Faker();
    final mediaqueryheight = MediaQuery.of(context).size.height;
    final mediaquerywidth = MediaQuery.of(context).size.width;
    final myAppBar = AppBar(
      title: Text('Media Query'),
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(mediaquerywidth * 0.15),
        child: TabBar(
          onTap: (index) {
            setState(() {
              indexTab = index;
            });
          },
          unselectedLabelColor: Colors.indigo,
          labelStyle: TextStyle(fontWeight: FontWeight.w800),
          unselectedLabelStyle: TextStyle(fontWeight: FontWeight.w400),
          // indicatorColor: Colors.lightBlue,
          // indicatorWeight: 3,
          indicator: BoxDecoration(
              color: Colors.grey,
              border:
                  Border(bottom: BorderSide(width: 3, color: Colors.indigo))),
          tabs: myTab,
        ),
      ),
    );
    final bodyheight = mediaqueryheight -
        myAppBar.preferredSize.height -
        MediaQuery.of(context).padding.top;
    final bool isLandScape =
        MediaQuery.of(context).orientation == Orientation.landscape;
    return Scaffold(
      appBar: myAppBar,
      floatingActionButton: (indexTab == 0)
          ? FloatingActionButton(
              onPressed: () {},
              child: Icon(Icons.group_add),
            )
          : (indexTab == 1)
              ? FloatingActionButton(
                  onPressed: () {},
                  child: Icon(Icons.add),
                )
              : FloatingActionButton(
                  onPressed: () {},
                  child: Icon(Icons.call),
                ),
      body: TabBarView(children: [
        Center(
          child: (isLandScape)
              ? Column(
                  children: [
                    Container(
                      height: bodyheight * 0.5,
                      width: mediaquerywidth,
                      color: Colors.indigo,
                      child: Text(
                        'This is Landscape',
                        style: TextStyle(color: Colors.white, fontSize: 30),
                      ),
                      alignment: Alignment.center,
                    ),
                    Container(
                      height: bodyheight * 0.5,
                      child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            mainAxisSpacing: 10,
                            crossAxisSpacing: 10,
                            crossAxisCount: 3),
                        itemCount: 20,
                        itemBuilder: (context, index) {
                          return GridTile(
                            child: Container(
                                color: Color.fromARGB(
                                    255,
                                    Random().nextInt(256),
                                    Random().nextInt(256),
                                    Random().nextInt(256))),
                          );
                        },
                      ),
                    ),
                  ],
                )
              : Column(
                  children: [
                    Container(
                      height: bodyheight,
                      child: ListView.builder(
                        itemCount: 20,
                        itemBuilder: (context, index) {
                          return ListTile(
                            tileColor: Colors.grey[400],
                            title: Text(faker.person.name()),
                            leading: CircleAvatar(
                                backgroundImage: NetworkImage(faker.image.image(
                                    width: 1200,
                                    height: 900,
                                    keywords: ['people', 'nature'],
                                    random: true))),
                          );
                        },
                      ),
                    ),
                  ],
                ),
        ),
        Center(
          child: (isLandScape)
              ? Column(
                  children: [
                    Container(
                      height: bodyheight * 0.5,
                      width: mediaquerywidth,
                      color: Colors.indigo,
                      child: Text(
                        'This is Landscape',
                        style: TextStyle(color: Colors.white, fontSize: 30),
                      ),
                      alignment: Alignment.center,
                    ),
                    Container(
                      height: bodyheight * 0.5,
                      child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            mainAxisSpacing: 10,
                            crossAxisSpacing: 10,
                            crossAxisCount: 3),
                        itemCount: 20,
                        itemBuilder: (context, index) {
                          return GridTile(
                            child: Container(
                                color: Color.fromARGB(
                                    255,
                                    Random().nextInt(256),
                                    Random().nextInt(256),
                                    Random().nextInt(256))),
                          );
                        },
                      ),
                    ),
                  ],
                )
              : Column(
                  children: [
                    Container(
                      color: Colors.grey[400],
                      child: Column(
                        children: [
                          Container(
                            height: bodyheight * 0.15,
                            alignment: Alignment.center,
                            child: ListTile(
                              tileColor: Colors.grey[400],
                              title: Text('Your Status'),
                              leading: CircleAvatar(
                                  backgroundImage: NetworkImage(faker.image
                                      .image(
                                          width: 1200,
                                          height: 900,
                                          keywords: ['people', 'nature'],
                                          random: true))),
                            ),
                          ),
                          Container(
                            height: bodyheight * 0.85,
                            child: ListView.builder(
                              itemCount: 20,
                              itemBuilder: (context, index) {
                                return ListTile(
                                  tileColor: Colors.grey[400],
                                  title: Text(faker.person.name()),
                                  leading: CircleAvatar(
                                      backgroundImage: NetworkImage(faker.image
                                          .image(
                                              width: 1200,
                                              height: 900,
                                              keywords: ['people', 'nature'],
                                              random: true))),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
        ),
        Center(
          child: Column(
            children: [
              Container(
                color: Colors.grey[400],
                child: Container(
                  height: bodyheight,
                  child: ListView.builder(
                    itemCount: 20,
                    itemBuilder: (context, index) {
                      return ListTile(
                        tileColor: Colors.grey[400],
                        title: Text(faker.person.name()),
                        trailing: Icon(Icons.phone),
                        leading: CircleAvatar(
                            backgroundImage: NetworkImage(faker.image.image(
                                width: 1200,
                                height: 900,
                                keywords: ['people', 'nature'],
                                random: true))),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}

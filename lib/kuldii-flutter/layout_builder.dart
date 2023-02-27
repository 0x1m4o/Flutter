import 'package:flutter/material.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final widthApp = MediaQuery.of(context).size.width;
    final heightApp = MediaQuery.of(context).size.height;
    final paddingTop = MediaQuery.of(context).padding.top;
    final myAppBar = AppBar(
      title: Text('Layout Builder'),
    );
    final bodyHeight = heightApp - myAppBar.preferredSize.height - paddingTop;

    return Scaffold(
      appBar: myAppBar,
      body: Container(
        width: widthApp,
        height: bodyHeight * 0.3,
        color: Colors.grey[300],
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // MyContainer(widthApp, bodyHeight),
            // MyContainer(widthApp, bodyHeight),
            // MyContainer(widthApp, bodyHeight),

            MyContainer(),
            MyContainer(),
            MyContainer(),
          ],
        ),
      ),
    );
  }
}

class MyContainer extends StatelessWidget {
  // final double widthApp;
  // final double heightApp;
  // MyContainer(this.widthApp, this.heightApp);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, contrant) {
      return Container(
        // width: widthApp * 0.2,
        width: contrant.maxWidth * 0.2,
        height: contrant.maxHeight * 0.5,
        color: Colors.green,
      );
    });
  }
}

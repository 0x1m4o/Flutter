import 'package:flutter/material.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> myContainer = [
      Container(
        width: 300, // this used when horizontal axis
        height: 300, // this used when vertical axis
        color: Colors.green,
      ),
      Container(
        width: 300, // this used when horizontal axis
        height: 300, // this used when vertical axis
        color: Colors.blue,
      ),
      Container(
        width: 300, // this used when horizontal axis
        height: 300, // this used when vertical axis
        color: Colors.amber,
      ),
      Container(
        width: 300, // this used when horizontal axis
        height: 300, // this used when vertical axis
        color: Colors.red,
      ),
    ];

    List<Color> myColor = [
      Colors.blue,
      Colors.green,
      Colors.amber,
      Colors.pink
    ];

    List<Widget> myLoop = List.generate(100, (index) {
      return Text(
        '${index + 1}',
        style: TextStyle(fontSize: 20 + (index.toDouble())),
      );
    });
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('List View'),
          ),

          /// ListView
          /// ListView default has 100% width and scrolling to y-direction.
          /// in y-direction the width size doesn't matter when it is not exist.
          body:

              /// ListView
              // ListView(
              // You can set the direction of scrolling either y or x direction
              // scrollDirection: Axis.horizontal,
              /// You can directly input the content
              // children: [
              //   Container(
              //     width: 300, // this used when horizontal axis
              //     height: 300, // this used when vertical axis
              //     color: Colors.green,
              //   ),
              //   Container(
              //     width: 300, // this used when horizontal axis
              //     height: 300, // this used when vertical axis
              //     color: Colors.blue,
              //   ),
              //   Container(
              //     width: 300, // this used when horizontal axis
              //     height: 300, // this used when vertical axis
              //     color: Colors.amber,
              //   ),
              //   Container(
              //     width: 300, // this used when horizontal axis
              //     height: 300, // this used when vertical axis
              //     color: Colors.red,
              //   ),
              // ]

              /// OR

              /// You can use the list to call the content

              // children: myContainer,
              // ),

              /// ListView Builder
              // ListView.builder(
              //     itemCount: myColor.length,
              //     itemBuilder: (context, index) {
              //       return Container(
              //           width: 10, height: 200, color: myColor[index]);
              //     })

              /// ListView Separated
              /// Used to separated builder
              // ListView.separated(
              //     itemBuilder: (context, index) {
              //       return Container(
              //           width: 10, height: 400, color: myColor[index]);
              //     },

              //     /// You can separated listview with widget. I use divider but you also can use container
              //     separatorBuilder: (context, index) {
              //       return Divider(
              //         color: Colors.grey,
              //       );
              //     },
              //     itemCount: myColor.length),

              ListView(
            children: myLoop,
          )),
    );
  }
}

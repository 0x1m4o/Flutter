import 'package:flutter/material.dart';
import 'package:learning_flutter/kuldii-flutter/extract_and_faker.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> myData = [
      {
        "Name": "Swagcat",
        "Age": 25,
        "profilePict": "images/swagcat1.png",
        "favColor": [
          "black",
          "green",
          "blue",
          "black",
          "green",
          "blue",
          "black",
          "green",
          "blue",
        ]
      },
      {
        "Name": "SwagDog",
        "Age": 35,
        "profilePict": "images/swagcat2.png",
        "favColor": ["red", "pink", "lightblue"]
      },
      {
        "Name": "SwagDog",
        "Age": 35,
        "profilePict": "images/swagcat3.png",
        "favColor": ["red", "pink", "lightblue"]
      },
      {
        "Name": "SwagDog",
        "Age": 35,
        "profilePict": "images/swagcat4.png",
        "favColor": ["red", "pink", "lightblue"]
      },
      {
        "Name": "SwagDog",
        "Age": 35,
        "profilePict": "images/swagcat5.png",
        "favColor": ["red", "pink", "lightblue"]
      },
      {
        "Name": "SwagDog",
        "Age": 35,
        "profilePict": "images/swagcat3.png",
        "favColor": ["red", "pink", "lightblue"]
      }
    ];
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Mapping List - ID Apps'),
          ),
          body: ListView(
            children: myData.map((data) {
              List myfavColor = data["favColor"];
              return Card(
                margin: EdgeInsets.all(10),
                color: Colors.grey.withOpacity(0.3),
                child: Container(
                  margin: EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            backgroundImage:
                                AssetImage("${data["profilePict"]}"),
                          ),
                          SizedBox(
                            width: 12,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Name : ${data["Name"]}'),
                              Text(
                                'Age : ${data["Age"]}',
                                style: TextStyle(fontSize: 12),
                              )
                            ],
                          ),
                        ],
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: myfavColor.map((color) {
                          return Container(
                            child: Text(color),
                            color: Colors.lightBlue,
                            margin: EdgeInsets.all(8),
                            padding: EdgeInsets.all(10),
                          );
                        }).toList()),
                      )
                    ],
                  ),
                ),
              );
            }).toList(),
          )
          // Column(
          //   children: [
          //     Row(
          //       children: [
          //         CircleAvatar(),
          //         Column(
          //           children: [Text('Name'), Text('Age')],
          //         )
          //       ],
          //     ),
          //     Row(
          //       children: [
          //         Container(
          //           child: Text('Hitam'),
          //         ),
          //         Container(
          //           child: Text('Kuning'),
          //         ),
          //         Container(
          //           child: Text('Hijau'),
          //         ),
          //       ],
          //     )
          //   ],
          // ),
          ),
    );
  }
}

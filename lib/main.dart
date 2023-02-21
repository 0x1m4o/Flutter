import 'package:flutter/material.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> myData = [
      {
        "name": "Swagcat",
        "age": 12,
        "profilepic": "swagcat1.png",
        "favFood": [
          "Pizza",
          "Noodles",
          "Briyani",
          "Rice",
          "Pizza",
          "Noodles",
          "Briyani",
          "Rice",
          "Pizza",
          "Noodles",
          "Briyani",
          "Rice"
        ]
      },
      {
        "name": "SwagDog",
        "age": 12,
        "profilepic": "swagcat2.png",
        "favFood": ["Pizza", "Noodles", "Briyani", "Rice"]
      },
      {
        "name": "SwagBat",
        "age": 12,
        "profilepic": "swagcat3.png",
        "favFood": ["Pizza", "Noodles", "Briyani", "Rice"]
      },
    ];
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Mapping List'),
      ),
      body: ListView(
        children: myData.map((data) {
          List myFood = data["favFood"];
          return Card(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('images/${data['profilepic']}'),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Name : ${data["name"]}'),
                      Text('Age : ${data["age"]}')
                    ],
                  ),
                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: myFood.map((food) {
                    return Container(
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.all(10),
                      color: Colors.lightBlue,
                      child: Text(food),
                    );
                  }).toList(),
                ),
              )
            ]),
          );
        }).toList(),
      ),
    ));
  }
}

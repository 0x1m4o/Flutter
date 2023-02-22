import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final Faker faker = Faker();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Dismissble'),
        ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            return Dismissible(
                direction: DismissDirection.endToStart,
                onDismissed: (direction) {
                  print('dismissed');
                },
                confirmDismiss: (direction) {
                  return showDialog(
                      context: context,
                      builder: (context) {
                        /// Alert Dialog
                        return AlertDialog(
                          title: Text('Confirm Deletions ?'),
                          actions: [
                            Padding(
                              padding: EdgeInsets.all(10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  TextButton(
                                      onPressed: () {
                                        Navigator.of(context).pop(false);
                                      },
                                      child: Text('No')),
                                  TextButton(
                                      onPressed: () {
                                        Navigator.of(context).pop(true);
                                      },
                                      child: Text('Yes'))
                                ],
                              ),
                            )
                          ],
                        );
                      });
                },
                background: Container(
                  color: Colors.red[300],
                  child: Icon(
                    Icons.delete,
                    color: Colors.white,
                    size: 25,
                  ),
                  alignment: Alignment.centerRight,
                  padding: EdgeInsets.only(right: 10),
                ),
                key: Key(index.toString()),
                child: ListTile(
                    title: Text(faker.person.name()),
                    subtitle: Text(faker.lorem.sentence()),
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(faker.image.image(
                          width: 200,
                          height: 200,
                          keywords: ['people', 'nature'],
                          random: true)),
                    )));
          },
          itemCount: 100,
        ));
  }
}

import 'package:flutter/material.dart';

class MyHome extends StatefulWidget {
  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  String result = 'Belum ada input';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dialog'),
      ),
      body: Center(
        child: Text(
          result,
          style: TextStyle(fontSize: 30),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('Telah di klik');
          showDialog(

              /// Show Dialog membutuhkan sebuah context
              context: context,

              /// Builder untuk membuat show dialog
              builder: (context) {
                return AlertDialog(
                  title: Text('Confirm'),
                  content: Text('Are you sure wan\'t to delete this content ?'),
                  actions: [
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextButton(
                              onPressed: () {
                                print('Klik No');
                                setState(() {
                                  result = 'Klik No';
                                });

                                /// To close the current of stack/scaffold layer we need to pop it
                                /// inside the pop(), we can return the value to the then()
                                Navigator.of(context).pop(false);
                              },
                              child: Text('No')),
                          TextButton(
                              onPressed: () {
                                print('Klik Yes');
                                setState(() {
                                  result = 'Klik Yes';
                                });
                                Navigator.of(context).pop(true);
                              },
                              child: Text('Yes')),
                        ],
                      ),
                    ),
                  ],
                );
              }).then((value) {
            print(value);
          });
        },
        child: Icon(Icons.delete),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

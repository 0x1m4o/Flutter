import 'package:flutter/material.dart';
import './page_dua.dart';

class PageSatu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Page Satu')),
      body: Center(
        child: Text('Ini Page 1'),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.keyboard_arrow_right),
          onPressed: () {
            /// Use Push Replacement to replace and delete the current route
            // Navigator.of(context)
            //     .pushReplacement(MaterialPageRoute(builder: (context) {
            //   return PageDua();
            // }));

            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              return PageDua();
            }));
          }),
    );
  }
}

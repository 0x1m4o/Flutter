import 'package:flutter/material.dart';
import './page_satu.dart';

class PageDua extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Page Dua')),
      body: Center(
        child: Text('Ini Page 2'),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.keyboard_arrow_left),
          onPressed: () {
            Navigator.of(context).pop();
          }),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:learning_flutter/pages/gallery.dart';

class MyHomePage extends StatelessWidget {
  static const nameRoute = '/homepage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Homepage'),
      ),
      body: Center(
        child: Text(
          'Homepage',
          style: TextStyle(fontSize: 50),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed(MyGalleryPage.nameRoute);
        },
        child: Icon(Icons.keyboard_arrow_right),
      ),
    );
  }
}

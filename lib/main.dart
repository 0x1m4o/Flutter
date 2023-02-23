import 'package:flutter/material.dart';
import './kuldii-flutter/route/pages/gallery.dart';
import './kuldii-flutter/route/pages/homepage.dart';
import './kuldii-flutter/route/pages/photo.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
      initialRoute: '/homepage',
      routes: {
        MyHomePage.nameRoute: (context) => MyHomePage(),
        MyGalleryPage.nameRoute: (context) => MyGalleryPage(),
        MyPhotoPage.nameRoute: (context) => MyPhotoPage(),
      },
    );
  }
}

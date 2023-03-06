import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './http-get/models/http_provider.dart';

// import './http-get/pages/home_stateful.dart';
import './http-get/pages/home_provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: HomeStateful(),
      home: ChangeNotifierProvider(
        create: (context) => HttpProvider(),
        child: HomeProvider(),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './firebase - get/providers/players.dart';
import './firebase - get/pages/detail_player_page.dart';
import './firebase - get/pages/add_player_page.dart';
import './firebase - get/pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Players(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
        routes: {
          AddPlayer.routeName: (context) => AddPlayer(),
          DetailPlayer.routeName: (context) => DetailPlayer(),
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.grey,
          appBar: AppBar(
            title: Text('Navigation Bar'),
          ),
          body: Center(
            child: Text(
              "pConsectetur sunt aliqua dolor ea.Ullamco irure incididunt occaecat duis.Ad velit laboris quis deserunt fugiat. Irure cillum Lorem exercitation incididunt ad adipisicing. Ullamco mollit ullamco ea irure adipisicing nostrud ipsum cupidatat non consectetur culpa nostrud laboris. Do exercitation nostrud mollit sunt do cupidatat id eu nulla ipsum et elit deserunt ea. Labore ea mollit Lorem dolore esse velit deserunt.",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
                color: Colors.blue,
                fontFamily: 'Montserrat',
              ),
            ),
          ),
        ));
  }
}

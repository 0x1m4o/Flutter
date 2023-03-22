import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() {
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
  Future<Map<String, dynamic>> ambilData() async {
    try {
      var hasilData =
          await http.get(Uri.parse('https://reqres.in/api/users/2'));
      if (hasilData.statusCode >= 200 && hasilData.statusCode < 300) {
        var data = json.decode(hasilData.body)["data"] as Map<String, dynamic>;
        return data;
      } else {
        throw ('${hasilData.statusCode}');
      }
    } catch (e) {
      throw (e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Future Builder')),
        body: FutureBuilder(
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(
                child: CircularProgressIndicator(),
              );
            } else if (snapshot.error != null) {
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '${snapshot.error}',
                      style: TextStyle(fontSize: 35),
                    )
                  ],
                ),
              );
            } else {
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '${snapshot.data!['first_name']} ${snapshot.data!['last_name']}',
                      style: TextStyle(fontSize: 35),
                    )
                  ],
                ),
              );
            }
          },
          future: ambilData(),
        ));
  }
}

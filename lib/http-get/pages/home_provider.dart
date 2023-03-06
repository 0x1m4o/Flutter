import 'package:flutter/material.dart';
import '../models/http_provider.dart';
import 'package:provider/provider.dart';
import 'dart:math';

class HomeProvider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final dataProvider = Provider.of<HttpProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: Text("GET - STATEFUL"),
      ),
      body: Container(
        width: double.infinity,
        margin: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Container(
                height: 100,
                width: 100,
                child: Consumer<HttpProvider>(
                  builder: (context, value, child) {
                    return Image.network(
                      dataProvider.dataget?['avatar'] == null
                          ? "https://www.uclg-planning.org/sites/default/files/styles/featured_home_left/public/no-user-image-square.jpg?itok=PANMBJF-"
                          : "${dataProvider.dataget!['avatar']}",
                      fit: BoxFit.cover,
                    );
                  },
                ),
              ),
            ),
            SizedBox(height: 20),
            FittedBox(
              child: Consumer<HttpProvider>(
                builder: (context, value, child) {
                  return Text(
                    dataProvider.dataget?['id'] == null
                        ? "ID : Belum ada data"
                        : "${dataProvider.dataget!['id']}",
                    style: TextStyle(fontSize: 20),
                  );
                },
              ),
            ),
            SizedBox(height: 20),
            FittedBox(child: Text("Name : ", style: TextStyle(fontSize: 20))),
            FittedBox(
              child: Consumer<HttpProvider>(
                builder: (context, value, child) {
                  return Text(
                    dataProvider.dataget?['first_name'] == null &&
                            dataProvider.dataget?['last_name'] == null
                        ? "Belum ada data"
                        : "${dataProvider.dataget!['first_name'] + ' ' + dataProvider.dataget!['last_name']}",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 20),
            FittedBox(child: Text("Email : ", style: TextStyle(fontSize: 20))),
            FittedBox(
              child: Consumer<HttpProvider>(
                builder: (context, value, child) {
                  return Text(
                    dataProvider.dataget?['email'] == null
                        ? "Belum ada data"
                        : "${dataProvider.dataget!['email']}",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 100),
            OutlinedButton(
              onPressed: () {
                dataProvider
                    .getConnectAPI((1 + Random().nextInt(10)).toString());
              },
              child: Text(
                "GET DATA",
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

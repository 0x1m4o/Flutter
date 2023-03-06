import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/http_provider.dart';

class HomeProvider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String? name, job;

    final dataProvider = Provider.of<HttpProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: Text("POST - PROVIDER"),
      ),
      body: ListView(children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FittedBox(child: Text("ID : ", style: TextStyle(fontSize: 20))),
            FittedBox(
              child: Consumer<HttpProvider>(
                builder: (context, value, child) => Text(
                  value.data?['id'] == null
                      ? "ID : Belum ada data"
                      : "ID : ${value.data!["id"]}",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
            SizedBox(height: 20),
            FittedBox(child: Text("Nama : ", style: TextStyle(fontSize: 20))),
            FittedBox(
                child: Consumer<HttpProvider>(
                    builder: (context, value, child) => Text(
                          value.data?["name"] == null
                              ? "Nama : Belum ada data"
                              : "Nama : ${value.data?["name"]}",
                          style: TextStyle(fontSize: 20),
                        ))),
            SizedBox(height: 20),
            FittedBox(child: Text("Job : ", style: TextStyle(fontSize: 20))),
            FittedBox(
              child: Consumer<HttpProvider>(
                  builder: (context, value, child) => Text(
                        value.data?["job"] == null
                            ? "Job : Belum ada data"
                            : "Job : ${value.data!["job"]}",
                        style: TextStyle(fontSize: 20),
                      )),
            ),
            SizedBox(height: 20),
            FittedBox(
                child: Text("Created At : ", style: TextStyle(fontSize: 20))),
            FittedBox(
              child: Consumer<HttpProvider>(
                  builder: (context, value, child) => Text(
                        value.data?["createdAt"] == null
                            ? "Created At : Belum ada data"
                            : "Created At : ${value.data!["createdAt"]}",
                        style: TextStyle(fontSize: 20),
                      )),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 25),
              child: TextField(
                decoration: InputDecoration(
                  labelStyle: TextStyle(color: Colors.black),
                  labelText: 'Name',
                  hintText: "Enter your name",
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.black.withOpacity(0.4)),
                  ),
                ),
                onChanged: (value) => name = value,
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 25),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Job',
                  hintText: "Enter your Job",
                  labelStyle: TextStyle(color: Colors.black),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.black.withOpacity(0.4)),
                  ),
                ),
                onChanged: (value) => job = value,
              ),
            ),
            SizedBox(height: 20),
            OutlinedButton(
              onPressed: () {
                dataProvider.connectApi(name!, job!);
              },
              style: ButtonStyle(
                  elevation: MaterialStateProperty.all(8),
                  backgroundColor: MaterialStateProperty.all(Colors.grey[300])),
              child: Text(
                "Post Data",
                style: TextStyle(fontSize: 25, color: Colors.black),
              ),
            ),
          ],
        ),
      ]),
    );
  }
}

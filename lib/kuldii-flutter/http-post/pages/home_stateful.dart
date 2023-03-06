import 'package:flutter/material.dart';
import 'package:learning_flutter/http-post/models/http_stateful.dart';

class HomeStateful extends StatefulWidget {
  @override
  _HomeStatefulState createState() => _HomeStatefulState();
}

class _HomeStatefulState extends State<HomeStateful> {
  HttpStateful dataHasil = HttpStateful();
  String hasil = 'Hasil Text';
  late String? name, job;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("POST - STATEFUL"),
      ),
      body: ListView(children: [
        Container(
          width: double.infinity,
          margin: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FittedBox(
                child: Text(
                  (dataHasil.id == null)
                      ? "ID : Belum ada data"
                      : "ID : ${dataHasil.id}",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              SizedBox(height: 20),
              FittedBox(child: Text("Name : ", style: TextStyle(fontSize: 20))),
              FittedBox(
                child: Text(
                  (dataHasil.name == null)
                      ? "Name : Belum ada data"
                      : "Name : ${dataHasil.name}",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              SizedBox(height: 20),
              FittedBox(child: Text("Job : ", style: TextStyle(fontSize: 20))),
              FittedBox(
                child: Text(
                  (dataHasil.job == null)
                      ? "Job : Belum ada data"
                      : "Job : ${dataHasil.job}",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              SizedBox(height: 20),
              FittedBox(
                  child: Text("Created At : ", style: TextStyle(fontSize: 20))),
              FittedBox(
                child: Text(
                  (dataHasil.createdAt == null)
                      ? "Created At : Belum ada data"
                      : "Created At : ${dataHasil.createdAt}",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
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
                  HttpStateful.connectApi(name!, job!).then((value) {
                    setState(() {
                      dataHasil = value!;
                    });
                  });
                },
                style: ButtonStyle(
                    elevation: MaterialStateProperty.all(8),
                    backgroundColor:
                        MaterialStateProperty.all(Colors.grey[300])),
                child: Text(
                  "Post Data",
                  style: TextStyle(fontSize: 25, color: Colors.black),
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}

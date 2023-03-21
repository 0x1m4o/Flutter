import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/players.dart';

class AddPlayer extends StatelessWidget {
  static const routeName = "/add-player";
  final TextEditingController nameController = TextEditingController();
  final TextEditingController positionController = TextEditingController();
  final TextEditingController imageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();

    final players = Provider.of<Players>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: Text("ADD PLAYER"),
        actions: [
          IconButton(
            icon: Icon(Icons.save),
            onPressed: () {
              (nameController.value.text.isEmpty &&
                      positionController.value.text.isEmpty &&
                      imageController.value.text.isEmpty)
                  ? ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text("Tolong diisi semua datanya"),
                        duration: Duration(seconds: 2),
                      ),
                    )
                  : players
                      .addPlayer(
                      nameController.text,
                      positionController.text,
                      imageController.text,
                    )
                      .then(
                      (response) {
                        print("Kembali ke Home & kasih notif snack bar");
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text("Berhasil ditambahkan"),
                            duration: Duration(seconds: 2),
                          ),
                        );
                        Navigator.pop(context);
                      },
                    );
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          child: Column(
            children: [
              TextFormField(
                autocorrect: false,
                autofocus: true,
                decoration: InputDecoration(labelText: "Nama"),
                textInputAction: TextInputAction.next,
                controller: nameController,
              ),
              TextFormField(
                autocorrect: false,
                decoration: InputDecoration(labelText: "Posisi"),
                textInputAction: TextInputAction.next,
                controller: positionController,
              ),
              TextFormField(
                autocorrect: false,
                decoration: InputDecoration(labelText: "Image URL"),
                textInputAction: TextInputAction.done,
                controller: imageController,
                onEditingComplete: () {
                  (nameController.text != null &&
                          positionController.text != null &&
                          imageController.text != null)
                      ? players
                          .addPlayer(
                          nameController.text,
                          positionController.text,
                          imageController.text,
                        )
                          .then(
                          (response) {
                            print("Kembali ke Home & kasih notif snack bar");
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text("Berhasil ditambahkan"),
                                duration: Duration(seconds: 2),
                              ),
                            );
                            Navigator.pop(context);
                          },
                        )
                      : ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text("Tolong diisi semua datanya"),
                            duration: Duration(seconds: 2),
                          ),
                        );
                },
              ),
              SizedBox(height: 50),
              Container(
                width: double.infinity,
                alignment: Alignment.centerRight,
                child: OutlinedButton(
                  onPressed: () {
                    (nameController.text != null &&
                            positionController.text != null &&
                            imageController.text != null)
                        ? players
                            .addPlayer(
                            nameController.text,
                            positionController.text,
                            imageController.text,
                          )
                            .then(
                            (response) {
                              print("Kembali ke Home & kasih notif snack bar");
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text("Berhasil ditambahkan"),
                                  duration: Duration(seconds: 2),
                                ),
                              );
                              Navigator.pop(context);
                            },
                          )
                        : ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text("Tolong diisi semua datanya"),
                              duration: Duration(seconds: 2),
                            ),
                          );
                  },
                  child: Text(
                    "Submit",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

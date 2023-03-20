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
    final void Function() saveButton = () {
      if (_formKey.currentState!.validate()) {
        players
            .addPlayer(
          nameController.text,
          positionController.text,
          imageController.text,
        )
            .then((response) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text("Berhasil ditambahkan"),
              duration: Duration(milliseconds: 500),
            ),
          );
          Navigator.pop(context);
        }).catchError((err) => showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: Text('Terjadi Error $err'),
                    content: Text('Tidak dapat menambahkan Player.'),
                    actions: [
                      TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text('Close'))
                    ],
                  ),
                ));
      }
    };
    final Function textFormField = (value) {
      if (value == null || value.isEmpty) {
        return 'Data cannot be null';
      }
      return null;
    };

    return Scaffold(
      appBar: AppBar(
        title: Text("ADD PLAYER"),
        actions: [
          IconButton(icon: Icon(Icons.save), onPressed: saveButton),
        ],
      ),
      body: ListView(children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  autocorrect: false,
                  decoration: InputDecoration(labelText: "Name"),
                  textInputAction: TextInputAction.next,
                  controller: nameController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'This field is required';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  autocorrect: false,
                  decoration: InputDecoration(labelText: "Posisi"),
                  textInputAction: TextInputAction.next,
                  controller: positionController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'This field is required';
                    }
                    return null;
                  },
                ),
                TextFormField(
                    autocorrect: false,
                    decoration: InputDecoration(labelText: "Image URL"),
                    textInputAction: TextInputAction.done,
                    controller: imageController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'This field is required';
                      }
                      return null;
                    },
                    onEditingComplete: saveButton),
                SizedBox(height: 50),
                Container(
                  width: double.infinity,
                  alignment: Alignment.centerRight,
                  child: OutlinedButton(
                    onPressed: saveButton,
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
      ]),
    );
  }
}

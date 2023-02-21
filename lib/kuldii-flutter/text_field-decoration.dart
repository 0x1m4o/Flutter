import 'package:flutter/material.dart';
import 'package:learning_flutter/kuldii-flutter/date_format.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Text Fields Feature'),
      ),
      body: const Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 50),
          child: TextField(
            // autocorrect: false,
            // decoration: InputDecoration(hintText: 'Tests'),
            // enableSuggestions: false,
            // keyboardType: TextInputType.number,
            // obscureText: true,
            // obscuringCharacter: '\$',
            // enableInteractiveSelection: true,
            // readOnly: true,
            // enabled: false,
            // autofocus: true,

            decoration: InputDecoration(
              fillColor: Colors.black,
              labelText: 'Login',
              hintText: "Please Login",
              // alignLabelWithHint: true,
              floatingLabelStyle: TextStyle(color: Colors.black),

              // border: OutlineInputBorder(),
              // icon: Icon(
              //   Icons.person,
              //   size: 30,
              // ),
              // prefixIcon: Icon(Icons.person_2_rounded),
              border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.red, width: 1)),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.purpleAccent),
              ),
              focusColor: Colors.black,
              labelStyle: TextStyle(),
              prefixIcon: Icon(
                Icons.person,
                size: 20,
              ),
              suffixIcon: Icon(Icons.remove_red_eye),

              prefixIconColor: Colors.black,
              suffixIconColor: Colors.black,

              /// Cursor
            ),
            cursorColor: Colors.lightBlue,
            cursorWidth: 3, cursorRadius: Radius.circular(3),
          ),
        ),
      ),
    ));
  }
}

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';
import '../models/player.dart';

class Players with ChangeNotifier {
  List<Player> _allPlayer = [];

  List<Player> get allPlayer => _allPlayer;

  int get jumlahPlayer => _allPlayer.length;

  Player selectById(String id) =>
      _allPlayer.firstWhere((element) => element.id == id);

  Future<void> addPlayer(String name, String position, String image) async {
    DateTime datetimeNow = DateTime.now();

    Uri url = Uri.parse(
        "https://learning-flutter-fire-050628-default-rtdb.asia-southeast1.firebasedatabase.app/players.json");

    /// Metode Try and Catch
    try {
      final response = await http.post(
        url,
        body: json.encode(
          {
            "name": name,
            "position": position,
            "imageUrl": image,
            "createdAt": datetimeNow.toString(),
          },
        ),
      );
      if (response.statusCode >= 200 && response.statusCode <= 300) {
        _allPlayer.add(
          Player(
            id: json.decode(response.body)["name"].toString(),
            name: name,
            position: position,
            imageUrl: image,
            createdAt: datetimeNow,
          ),
        );
      } else {
        throw ('${response.statusCode}');
      }
      notifyListeners();
    } catch (error) {
      throw (error);
    }

    /// Metode then catch
    // Then digunakan untuk menyimpan data di memory list[] sedangkan http.post yang dilakukan diatas ada untuk menyimpan di database.
    //     .then(
    //   (response) {
    //     print("THEN FUNCTION");
    //     if (response.statusCode >= 200 && response.statusCode <= 300) {
    //       _allPlayer.add(
    //         Player(
    //           id: json.decode(response.body)["name"].toString(),
    //           name: name,
    //           position: position,
    //           imageUrl: image,
    //           createdAt: datetimeNow,
    //         ),
    //       );
    //     } else {
    //       throw ('${response.statusCode}');
    //     }

    //     notifyListeners();
    //   },
    // ).catchError((error) => throw (error));
  }

  Future<void> editPlayer(
      String id, String name, String position, String image) {
    Uri url = Uri.parse(
        "https://learning-flutter-fire-050628-default-rtdb.asia-southeast1.firebasedatabase.app/players/${id}.json");
    return http
        .patch(
      url,
      body: json.encode(
        {
          "name": name,
          "position": position,
          "imageUrl": image,
        },
      ),
    )
        // Then digunakan untuk menyimpan data di memory list[] sedangkan http.post yang dilakukan diatas ada untuk menyimpan di database.
        .then(
      (response) {
        Player selectPlayer =
            _allPlayer.firstWhere((element) => element.id == id);
        selectPlayer.name = name;
        selectPlayer.position = position;
        selectPlayer.imageUrl = image;

        notifyListeners();
      },
    );
  }

  deletePlayer(String id) async {
    Uri url = Uri.parse(
        "https://learning-flutter-fire-050628-default-rtdb.asia-southeast1.firebasedatabase.app/players/$id.json");
    try {
      final response = await http.delete(url).then((response) {
        print('1 ${response.statusCode}');
        if (response.statusCode >= 200 && response.statusCode <= 300) {
          print('2 ${response.statusCode}');
          _allPlayer.removeWhere((element) => element.id == id);
        } else {
          throw (response.statusCode);
        }
        notifyListeners();
      });

      // Then digunakan untuk menyimpan data di memory list[] sedangkan http.delete yang dilakukan diatas ada untuk menyimpan di database.
    } catch (err) {
      print(err);
      throw (err);
    }
  }
  // Future<void> deletePlayer(String id) {
  //   Uri url = Uri.parse(
  //       "https://learning-flutter-fire-050628-default-rtdb.asia-southeast1.firebasedatabase.app/players/${id}.json");
  //   return http
  //       .delete(url)
  //       // Then digunakan untuk menyimpan data di memory list[] sedangkan http.delete yang dilakukan diatas ada untuk menyimpan di database.
  //       .then(
  //     (response) {
  //       _allPlayer.removeWhere((element) => element.id == id);
  //       notifyListeners();
  //     },
  //   );
  // }

  Future<void> initialData() async {
    Uri url = Uri.parse(
        "https://learning-flutter-fire-050628-default-rtdb.asia-southeast1.firebasedatabase.app/players.json");

    var hasilGetData = await http.get(url);

    var dataResponse = json.decode(hasilGetData.body) as Map<String, dynamic>;
    if (dataResponse != null) {
      dataResponse.forEach((key, value) {
        DateTime dateTimeParse =
            DateFormat('yyyy-mm-dd hh:mm:ss').parse(value['createdAt']);
        _allPlayer.add(Player(
            id: key,
            name: value['name'],
            position: value['position'],
            imageUrl: value['imageUrl'],
            createdAt: dateTimeParse));
        notifyListeners();
      });
    }
  }
}

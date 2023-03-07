import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class HttpProvider with ChangeNotifier {
  Map<String, dynamic>? _data = {};
  Map<String, dynamic>? get dataget => _data;

  int? get jumlahData => _data!.length;
  Uri? url;
  void getConnectAPI(String id, BuildContext context) async {
    url = Uri.parse('https://reqres.in/api/users/' + id);
    var hasilResponse = await http.get(url!);

    if (hasilResponse.statusCode == 200) {
      _data = json.decode(hasilResponse.body)['data'];
      notifyListeners();
      handlingGetData(context, 'Berhasil Get Data');
    } else {
      handlingGetData(context, 'Gagal Get Data');
    }
  }

  void deleteData(BuildContext context) async {
    var hasilResponse = await http.delete(url!);

    if (hasilResponse.statusCode == 204) {
      _data = {};
      notifyListeners();
      handlingGetData(context, 'Berhasil Delete Data');
    }
  }

  handlingGetData(BuildContext context, String message) {
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }
}

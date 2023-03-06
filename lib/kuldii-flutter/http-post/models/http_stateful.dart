import 'dart:convert';

import 'package:http/http.dart' as http;

class HttpStateful {
  String? name, job, id, createdAt;

  HttpStateful({this.name, this.job, this.id, this.createdAt});

  static Future<HttpStateful?> connectApi(String name, String job) async {
    Uri url = Uri.parse('https://reqres.in/api/users');

    var hasilResponse = await http.post(url, body: {"name": name, "job": job});

    var data = json.decode(hasilResponse.body);

    return HttpStateful(
      name: data['name'],
      job: data['job'],
      id: data['id'],
      createdAt: data['createdAt'],
    );
  }
}

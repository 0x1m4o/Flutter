import 'package:http/http.dart' as http;
import 'dart:convert';

class HttpStateful {
  String? id, name, email, avatar;

  HttpStateful({this.id, this.name, this.email, this.avatar});

  static Future<HttpStateful> getConnectAPI(String id) async {
    Uri url = Uri.parse('https://reqres.in/api/users/' + id);
    var hasilResponse = await http.get(url);

    var data = json.decode(hasilResponse.body)['data'];

    return HttpStateful(
      id: data["id"].toString(),
      name: data["first_name"] + " " + data["last_name"],
      email: data["email"],
      avatar: data["avatar"],
    );
  }
}

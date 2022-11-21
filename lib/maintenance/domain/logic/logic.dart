import 'package:http/http.dart' as http;
import 'dart:convert';

class DatabaseMaintenance {
  Future<List> getMaintenance() async {
    final response =
    //await http.get(Uri.parse("https://jsonplaceholder.typicode.com/users"));
    //await http.get(Uri.parse("http://10.0.2.2:8080/api/vehicles"));
    await http.get(Uri.parse("https://wheelmanagerhackdead.herokuapp.com/api/offers"));
    print("${response.statusCode}");
    print("Hola");
    return json.decode(response.body);
  }
}
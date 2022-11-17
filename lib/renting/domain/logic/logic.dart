import 'package:http/http.dart' as http;
import 'dart:convert';

class DataBaseHelper {

  Future<http.Response> addRent(String startController, String endController) async {
    var url = 'http://10.0.2.2:8080/api/booking';
    Map data = {
      'startDate': '$startController',
      'endDate': '$endController'
    };

    var body = json.encode(data);

    var response = await http.post(Uri.parse(url),
        headers: {"Content-Type": "application/json"}, body: body);
    print("${response.statusCode}");
    print("addRent");
    print("${response.body}");
    return response;
  }



  //Add User - CRUD
  Future<http.Response> addUser(String nameController, String emailController,
      String phoneController) async {
    var url = 'https://jsonplaceholder.typicode.com/users';
    Map data = {
      'name': '$nameController',
      'email': '$emailController',
      'phone': '$phoneController'
    };

    var body = json.encode(data);

    var response = await http.post(Uri.parse(url),
        headers: {"Content-Type": "application/json"}, body: body);
    print("${response.statusCode}");
    print("${response.body}");
    return response;
  }

  //UpdateUser
  Future<http.Response> editUser(String id, String nameController,
      String emailController, String phoneController) async {
    int a = int.parse(id);
    print(a);
    var url = 'https://jsonplaceholder.typicode.com/users';

    Map data = {
      'id': '$a',
      'name': '$nameController',
      'email': '$emailController',
      'phone': '$phoneController',
    };

    var body = json.encode(data);

    var response = await http.put(Uri.parse(url),
        headers: {"Content-Type": "application/json"}, body: body);
    print("${response.statusCode}");
    print("${response.body}");
    return response;
  }

  //Remove one register of the database

  Future<http.Response> removeRegister(String id) async {
    int a = int.parse(id);
    print(a);
    var url = 'https://jsonplaceholder.typicode.com/users/$a';

    var response = await http
        .delete(Uri.parse(url), headers: {"Content-Type": "application/json"});
    print("${response.statusCode}");
    return response;
  }
}
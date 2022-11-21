import 'package:http/http.dart' as http;
import 'dart:convert';

class DatabaseManagement{
  Future<List> getData() async {
    final response =
    await http.get(Uri.parse("https://jsonplaceholder.typicode.com/users"));
    //await http.get(Uri.parse("http://10.0.2.2:8080/api/vehicles"));
    print("${response.statusCode}");
    print("Hola");
    return json.decode(response.body);
  }

  Future<http.Response> addVehicleInfo(String vehicleNameController, String imageURLController,
      String descriptionController) async {
    //var url = 'https://jsonplaceholder.typicode.com/users';
    //var url = 'http://10.0.2.2:8080/api/vehicles';
    var url = 'https://wheelmanagerhackdead.herokuapp.com/api/vehicles';
    Map data = {
      'vehicleName': '$vehicleNameController',
      'imageURL': '$imageURLController',
      'description': '$descriptionController',
      //'price': '$priceController'
    };

    var body = json.encode(data);

    var response = await http.post(Uri.parse(url),
        headers: {"Content-Type": "application/json"}, body: body);
    print("${response.statusCode}");
    print("${response.body}");
    print("vehicle added");
    return response;
  }



}
import 'package:http/http.dart' as http;
import 'package:wheel_manager/renting/domain/logic/logic.dart';

class RentingApi {
  DataBaseHelper dataBaseHelper = new DataBaseHelper();

  Future<http.Response> addRenting(
      String startController, String endController) async {
    return dataBaseHelper.addRent(startController, endController);
  }

  Future<http.Response> addCustomer(
      String nameController,
      String emailController,
      String phoneController,
      String addressController,
      String passwordController) async {
    return dataBaseHelper.addUser_(nameController, emailController,
        phoneController, addressController, passwordController);
  }
}

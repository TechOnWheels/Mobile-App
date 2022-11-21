import '../logic/logic.dart';
import 'package:http/http.dart' as http;

abstract class ManagementInterface{
  DatabaseManagement dataBaseHelper = new DatabaseManagement();

  Future<List> getVehicle();
  Future<http.Response> addVehicle(String vehicleNameController, String imageURLController,
      String descriptionController);
}
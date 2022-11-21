import 'package:http/http.dart' as http;
import 'package:wheel_manager/management/domain/logic/logic.dart';
import 'package:wheel_manager/renting/domain/logic/logic.dart';

class ManagementApi {
  DatabaseManagement dataBaseHelper = new DatabaseManagement();

  Future<List> getManageVehicle() async {
    return dataBaseHelper.getData();
  }

  Future<http.Response> addManageVehicle(
      String vehicleNameController, String imageURLController,
      String descriptionController) async {
    return dataBaseHelper.addVehicleInfo(vehicleNameController, imageURLController, descriptionController);
  }


}

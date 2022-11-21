import 'package:http/http.dart' as http;
import 'package:wheel_manager/management/domain/interfaces/interface.dart';
import 'package:wheel_manager/renting/domain/interfaces/interface.dart';

class ManagementApplication {
  late final ManagementInterface interface;

  Future<List> getVehicleItem(){
    return interface.getVehicle();
  }

  Future<http.Response> addVehicleItem(String vehicleNameController, String imageURLController,
      String descriptionController) async {
    return interface.addVehicle(vehicleNameController, imageURLController, descriptionController);
  }

}
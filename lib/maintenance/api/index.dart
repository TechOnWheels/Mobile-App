import 'package:wheel_manager/maintenance/domain/logic/logic.dart';

class MaintenanceApi {
  DatabaseMaintenance dataBaseHelper = new DatabaseMaintenance();

  Future<List> addMaintenance() async {
    return dataBaseHelper.getMaintenance();
  }
}
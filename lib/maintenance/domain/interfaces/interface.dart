import '../logic/logic.dart';
import 'package:http/http.dart' as http;

abstract class MaintenanceInterface{
  DatabaseMaintenance dataBaseHelper = new DatabaseMaintenance();

  Future<List> getMaintenanceItem();
}